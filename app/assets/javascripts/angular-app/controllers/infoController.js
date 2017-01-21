angular.module('rails-angular')
  .controller('infoController', ["$state", "$stateParams", "$http", "$scope", infoController ])
  function infoController($state,$stateParams,$http, $scope) {
    var self = this

    $http.get('http://localhost:3000/point_of_interest/' + $stateParams.id)
      .then(function(res) {
        self.place = res.data
      })
    
    this.submitKey = function() {
      $http.post('http://localhost:3000/point_of_interest/validate_code', {"business_code": self.key, "id": $stateParams.id})
        .then(function(res) {
          if(res.data.match) {
            $scope.$parent.ctrl.points++
            //display to the user that they got the correct code
          } else {
            //display that they got the code incorrect
          }
        })
    }
  }
