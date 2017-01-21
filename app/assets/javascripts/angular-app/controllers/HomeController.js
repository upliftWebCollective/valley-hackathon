angular.module('rails-angular')
  .controller('HomeController', HomeController)
  function HomeController(NgMap, $http) {
    NgMap.getMap().then(function(map) {
      console.log(map.getCenter());
      console.log('markers', map.markers);
      console.log('shapes', map.shapes);

      $http.get('http://localhost:3000/point_of_interest')
        .then(function(res) {
          var pois = res.data
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
          })
        })

    });
  }
