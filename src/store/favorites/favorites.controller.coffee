'use strict'

angular.module('store.home').controller 'favoritesCtrl', ($rootScope, eeDefiner, eeFavorites) ->

  favorites = this

  favorites.ee = eeDefiner.exports
  favorites.fns = eeFavorites.fns

  eeFavorites.fns.defineSkuIds()

  return
