'use strict'

angular.module 'ee-sidebar', []

angular.module('ee-sidebar').directive 'eeSidebar', ($state, $stateParams, eeDefiner, eeProducts) ->
  templateUrl: 'ee-shared/components/ee-sidebar.html'
  restrict: 'EA'
  scope: {}
  link: (scope, ele, attr) ->
    scope.ee = eeDefiner.exports
    scope.state = $state.current.name
    scope.stateParams = $stateParams

    scope.setCategoryAndSubtag = (id, subtag) ->
      subtag ||= ''
      eeProducts.fns.setParams { c: id, t: subtag }, { goTo: 'search' }

    return
