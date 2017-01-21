angular.module('rails-angular')
  .controller('infoController', infoController)
  function infoController($state,$stateParams, $http) {
    var self = this

    $http.get('http://localhost:3000/point_of_interest/' + $stateParams.id)
      .then(function(res) {
        self.place = res.data
      })
  }
