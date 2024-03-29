'use strict'

angular.module('store.added').config ($stateProvider) ->

  $stateProvider

    .state 'added',
      url: '/added/:id?q'
      views:
        top:
          controller: 'storeCtrl as store'
          templateUrl: 'store/product/product.header.html'
        middle:
          controller: 'addedCtrl as added'
          templateUrl: 'store/added/added.html'
        footer:
          controller: 'footerCtrl as storefront'
          templateUrl: 'ee-shared/storefront/storefront.footer.html'
      params:
        q: null
      data:
        pageTitle: 'Just Added to Your Cart'
