angular.module('rails-angular')
  .controller('HomeController', HomeController)
  function HomeController(NgMap, $http, $stateParams, $state) {
    NgMap.getMap().then(function(map) {
      console.log(map.getCenter());
      console.log('markers', map.markers);
      console.log('shapes', map.shapes);

      $http.get('http://localhost:3000/point_of_interest')
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
