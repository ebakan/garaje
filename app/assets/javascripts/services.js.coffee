services = angular.module 'garajeServices', ['ngResource', 'ng-rails-csrf']

services.factory 'Garage', ['$resource', ($resource) ->
  $resource '/garages/:id/',
    'id': '@id'
  ,
    query:
      headers:
        'Accept': 'application/json'
      isArray: true
    update:
      method: 'PUT'
    create:
      method: 'POST'
      url: '/garages'
    toggle:
      method: 'POST'
      url: '/garages/:id/toggle'
    add_permission:
      method: 'POST'
      url: '/garages/:id/permissions'
    revoke_permission:
      method: 'DELETE'
      url: '/garages/:id/permissions'

]

