angular.module('rails-angular')
  .controller('LoginController', LoginController)

function LoginController($scope, $auth) {
  console.log("AM I HERE")
      this.loginForm = {"email":"ed@gmail.com", "password":"password"}
      var self = this
      this.auth = $auth
      this.handleRegBtnClick = function() {
        $auth.submitLogin(self.loginForm )
        .then(function(resp) {
          //Success
          console.log(resp)
        })
        .then(function(resp) {
          //Error
          console.log(resp)
        })
      }
  }
