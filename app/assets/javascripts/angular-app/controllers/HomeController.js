angular.module('rails-angular')
  .controller('HomeController', ["NgMap", "$http", "$stateParams", "$state", HomeController ])
  function HomeController(NgMap, $http, $stateParams, $state) {
    this.points = 0
    
    NgMap.getMap().then(function(map) {
      $http.get('/point_of_interest')
        .then(function(res) {
          var pois = res.data
          console.log('pois: ', pois)
          var markers = []

          pois.forEach(function(place) {
            var pos = {lat: parseFloat(place.latitude), lng: parseFloat(place.longitude)}

            var marker = new google.maps.Marker({
              map: map,
              position: pos,
              title: place.name
              // animation: google.maps.Animation.BOUNCE
            })
            markers.push(marker)
            marker.addListener('click', function() {
              var infowindow = new google.maps.InfoWindow({
                content: '<div><strong>' + this.title + '</string><p>' + place.location + '</p>' +'<a href="#/info/'+ place.id+ '">Enter the code</a> </div>'
              });
              // '<a ui-sref="home.info({ id: '+ place.id+ '})">Boom</a> </div>'
              infowindow.open(map, marker);
              // $state.go('home.info/:id' , {param: place.id})
            });


          })
        })

    });
  }
