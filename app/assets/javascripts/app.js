railsAngular = angular.module('rails-angular',['ng-token-auth'])
  .config(function($authProvider) {
    $authProvider.configure({
      apiUrl: 'localhost:3000'
    });
  });
