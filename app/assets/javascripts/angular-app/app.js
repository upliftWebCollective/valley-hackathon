var app = angular.module('rails-angular',['ng-token-auth', 'ui.router', 'templates'])
  .config(function($authProvider, $stateProvider, $urlRouterProvider) {
    $authProvider.configure({
      apiUrl: 'localhost:3000'
    })

    $stateProvider
      .state('home', {
        url: '/',
        templateUrl: 'home.html',
        controller: 'HomeController as ctrl'
      })

    $urlRouterProvider.otherwise('/')
  })
