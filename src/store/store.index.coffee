'use strict'

angular.module 'eeStore', [
  # vendor
  'ngCookies'
  'ngAnimate'
  'ui.router'
  'ui.bootstrap'
  # 'ngSanitize'
  'angulartics'
  'angulartics.google.analytics'
  'rzModule'

  # core
  'app.core'

  # store
  'store.core'
  'store.home'
  'store.collections'
  'store.sale'
  'store.categories'
  'store.product'
  'store.sku'
  'store.cart'
  'store.checkout'
  'store.order'
  'store.help'
  'store.search'
  'store.favorites'
  'store.coupons'
  'store.added'
  'store.signup'
  'store.guests'
  'store.doorbusters'

  # custom
  'ee-storefront-announcement'
  'ee-storefront-header'
  'ee-storefront-scroller'
  # 'ee-storefront-brand'
  'ee-scroll-to-top'
  # 'ee-scroll-show'
  'ee-collection-nav'
  'ee-collection-for-store'
  # 'ee-product-for-store'
  # 'ee-product-card'
  # 'ee-product-card-compact'
  'ee-product-images'
  'ee-search-sort'
  'ee-search-token'
  'ee-empty-message'
  'ee-loading'
  'ee-signup'
  'ee-signup-message'
  'ee-favorites-signup'
  'ee-favorites-heart'
  'ee-image-fadein'
  'ee-products-list'
  'ee-paypal-button'
  'ee-coupon-box'
  'ee-product-single'
  'ee-product-detail'
  'ee-sidebar'
  'ee-search-breadcrumb'
  'ee-product-breadcrumb'
  'ee-cart-sidebar'
  # 'ee.templates' # commented out during build step for inline templates
]
