directives = angular.module 'garajeDirectives', []

directives.directive 'toggle', () ->
  scope:
    garage: "=toggle"
  template: "<button ng-click='toggle(garage)'> {{garage.open ? 'Open' : 'Closed'}}</button>"
  controller: ['$scope', 'Garage', ($scope, Garage) ->
    $scope.toggle = (garage) ->
      Garage.toggle(garage).$promise.then (v) ->
        garage.open ^= true
  ]
