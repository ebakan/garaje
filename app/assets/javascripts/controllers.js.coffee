controllers = angular.module 'garajeControllers', []

controllers.controller 'RootCtrl', ['$scope', 'Garage', ($scope, Garage) ->
  $scope.garages = Garage.query()
]

controllers.controller 'GarajeCtrl', ['$scope', '$routeParams', 'Garage', ($scope, $routeParams, Garage) ->
  console.log "Garaje"
  console.log $routeParams
  $scope.garage = Garage.get $routeParams
  console.log $scope.garage
  $scope.garage.$promise.then (value) ->
    console.log value
]

