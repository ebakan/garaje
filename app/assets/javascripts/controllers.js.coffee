controllers = angular.module 'garajeControllers', []

controllers.controller 'RootCtrl', ['$scope', 'Garage', 'Session', ($scope, Garage, Session) ->
  $scope.garages = Garage.query()
  $scope.current_user_id = Session.current_user_id()
]

controllers.controller 'GarajeCtrl', ['$scope', '$routeParams', 'Garage', ($scope, $routeParams, Garage) ->
  $scope.garage = Garage.get $routeParams
]

