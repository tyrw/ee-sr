'use strict'

angular.module 'ee-favorites-signup', []

angular.module('ee-favorites-signup').directive 'eeFavoritesSignup', (eeFavorites) ->
  templateUrl: 'ee-shared/components/ee-favorites-signup.html'
  restrict: 'EA'
  scope: {}
  link: (scope, ele, attr) ->
    scope.data = eeFavorites.data
    scope.send_favorites_link = true
    scope.on_mailing_list = true

    scope.subscribe = () ->
      if !scope.email? then return scope.alert = 'Please enter your email'
      scope.alert = false
      scope.submitting = true
      eeFavorites.fns.createOrUpdate scope.email, scope.on_mailing_list
      .then (res) -> scope.alert = false
      .catch (err) -> scope.alert = 'Problem with email address'
      .finally () -> scope.submitting = false

    return
