'use strict'

angular.module('store.categories').config ($stateProvider) ->

  $stateProvider

    .state 'category',
      url: '/categories/:id/:title?q&p&s&r&c&coll'
      views:
        top:
          controller: 'storeCtrl as storefront'
          templateUrl: 'store/search/search.header.html'
        middle:
          controller: 'searchCtrl as search' # 'categoryCtrl as category'
          templateUrl: 'store/search/search.html' # 'store/categories/category.html'
        footer:
          controller: 'footerCtrl as storefront'
          templateUrl: 'ee-shared/storefront/storefront.footer.html'
      params:
        q: null # query
        p: null # page
        s: null # sort
        r: null # range
        c: null # category
        coll: null # collection
      data:
        pageTitle:        'Search'
        pageDescription:  'Search our products'
        padTop:           '51px'
