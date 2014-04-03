controllers = angular.module 'garajeControllers', []

controllers.controller 'RootCtrl', ['$scope', 'Garage', ($scope, Garage) ->
  $scope.garages = Garage.query()
]

controllers.controller 'GarajeCtrl', ['$scope', '$routeParams', 'Garage', ($scope, $routeParams, Garage) ->
  $scope.garage = Garage.get $routeParams
  $scope.toggle = (garage) ->
    Garage.toggle(garage).$promise.then (v) ->
      garage.open ^= true
]

