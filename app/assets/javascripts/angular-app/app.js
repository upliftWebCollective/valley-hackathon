var app = angular.module('rails-angular',['ng-token-auth', 'ui.router', 'templates', 'ngMap'])
  .config(function($authProvider, $stateProvider, $urlRouterProvider) {
    $authProvider.configure({
      apiUrl: 'http://localhost:3000'
    })

    $stateProvider
      .state('home', {
        url: '/',
        templateUrl: 'home.html',
        controller: 'HomeController as ctrl'
      })
      .state('home.register', {
        url: 'register',
        templateUrl: 'register.html',
        controller: 'RegisterController as ctrl'
      })
      .state('home.login', {
        url: 'login',
        templateUrl: 'login.html',
        controller: 'LoginController as ctrl'
      })


    $urlRouterProvider.otherwise('/')
  })
