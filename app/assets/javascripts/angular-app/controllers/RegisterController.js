angular.module('rails-angular')
  .controller('RegisterController', ["$scope", "$auth", RegisterController])

function RegisterController($scope, $auth) {
  console.log("AM I HERE")
      this.registrationForm = {"email":"ed@gmail.com","password":"password","password_confirmation":"password"}
      var self = this
      this.handleRegBtnClick = function() {
        $auth.submitRegistration(self.registrationForm)
        .then(function(resp) {
          //Success
        })
        .then(function(resp) {
          //Error
        })
      }
  }
