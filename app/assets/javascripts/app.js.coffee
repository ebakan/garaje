app = angular.module 'garaje', ['templates', 'ngRoute', 'garajeControllers', 'garajeServices', 'garajeDirectives']

app.config ['$routeProvider', '$locationProvider', ($routeProvider, $locationProvider) ->
  console.log "app"
  $routeProvider.when '/',
    templateUrl: 'index.html'
    controller: 'RootCtrl'
  $routeProvider.when '/garages/:id',
    templateUrl: 'show.html'
    controller: 'GarajeCtrl'
  $routeProvider.otherwise
    redirect_to: "/"
  $locationProvider.html5Mode(true)
  console.log "hi"
]

