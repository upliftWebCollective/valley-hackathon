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
      .state('secrit',{
        url: '/secrit',
        templateUrl: '/auth/secrit.html',
        controller: 'SecritController as ctrl',
        resolve: {
          auth: function($auth, $state) {
            $auth.validateUser()
              .then(function(x) {
                console.log(x)
              })
              .catch(function(error) {
                console.log("YOU ARE UNWORTHY? IDK")
                $state.go('home')
              })
          }
        }
      })

    $urlRouterProvider.otherwise('/')
  })
