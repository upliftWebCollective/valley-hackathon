app.controller('SecritController', SecritController)
function SecritController($http, $state) {
  console.log("SECRIT SECRIT")

  this.buinsess = {}

  this.createBusiness = function(info) {
    $http({
      method: 'POST',
      url: '/business',
      data: info
    }).success(function(data, status, headers, config) {
            // this callback will be called asynchronously
      console.log({data,status,headers, config})
    }).error(function(data, status, headers, config) {
           // called asynchronously if an error occurs
      console.log({data,status,headers, config})
    })
  }
}
