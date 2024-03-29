_       = require 'lodash'
sources = {}

stripSrc  = (arr) -> _.map arr, (str) -> str.replace('./src/', '')
toJs      = (arr) -> _.map arr, (str) -> str.replace('.coffee', '.js').replace('./src/', 'js/')
unmin     = (arr) ->
  _.map arr, (str) -> str.replace('dist/angulartics', 'src/angulartics').replace('.min.js', '.js').replace('sourceMappingURL', 'foobar')

sources.storeJs = () ->
  [].concat stripSrc(unmin(sources.storeVendorMin))
    .concat stripSrc(sources.storeVendorUnmin)
    .concat toJs(sources.appModule)
    .concat toJs(sources.storeModule)
    .concat toJs(sources.storeDirective)

sources.storeModules = () ->
  [].concat sources.appModule
    .concat sources.storeModule
    .concat sources.storeDirective

### VENDOR ###
sources.storeVendorMin = [
  # TODO remove once zoom.js gone
  # './src/bower_components/jquery/dist/jquery.min.js'
  './src/bower_components/drift/dist/Drift.min.js'
  './src/bower_components/angular/angular.min.js'
  './src/bower_components/angular-ui-router/release/angular-ui-router.min.js'
  # './src/bower_components/angular-sanitize/angular-sanitize.min.js'
  './src/bower_components/angular-cookies/angular-cookies.min.js'
  './src/bower_components/angular-animate/angular-animate.min.js'
  './src/bower_components/angular-bootstrap/ui-bootstrap.min.js'
  './src/bower_components/angular-bootstrap/ui-bootstrap-tpls.min.js'
  './src/bower_components/angulartics/dist/angulartics.min.js'
  './src/bower_components/angulartics-google-analytics/dist/angulartics-google-analytics.min.js'
  # './src/bower_components/zoom.js/dist/zoom.min.js'
  './src/bower_components/keen-js/dist/keen.min.js'
  './src/bower_components/angularjs-slider/dist/rzslider.min.js'
]
sources.storeVendorMaps = [
  './src/bower_components/angulartics-google-analytics/dist/angulartics-google-analytics.min.js.map'
]
sources.storeVendorUnmin = [
  # TODO remove once zoom.js gone
  # './src/bower_components/bootstrap/js/transition.js'
]

### MODULE ###
sources.appModule = [
  # Definitions
  './src/ee-shared/core/core.module.coffee'
  './src/ee-shared/core/constants.coffee'
  './src/ee-shared/core/filters.coffee'
  './src/ee-shared/core/config.coffee'
  './src/ee-shared/core/run.coffee'
  # Services
  './src/ee-shared/core/svc.modal.coffee'
]
sources.storeModule = [
  # Definitions
  './src/store/store.index.coffee'
  './src/store/core/core.module.coffee'
  './src/store/core/run.coffee'
  './src/store/core/store.config.coffee'
  './src/store/core/core.route.coffee'
  # Services
  './src/store/core/svc.back.coffee'
  './src/store/core/svc.analytics.coffee'
  './src/store/core/svc.user.coffee'
  './src/store/core/svc.product.coffee'
  './src/store/core/svc.products.coffee'
  './src/store/core/svc.collection.coffee'
  './src/store/core/svc.collections.coffee'
  './src/store/core/svc.definer.coffee'
  './src/store/core/svc.cart.coffee'
  './src/store/core/svc.favorites.coffee'
  './src/store/core/svc.order.coffee'
  './src/store/core/svc.coupon.coffee'
  # Module - store
  './src/store/store.controller.coffee'
  # Module - home
  './src/store/home/home.module.coffee'
  './src/store/home/home.route.coffee'
  './src/store/home/home.controller.coffee'
  # Module - collection
  './src/store/collections/collections.module.coffee'
  './src/store/collections/collections.route.coffee'
  # Module - sale
  './src/store/sale/sale.module.coffee'
  './src/store/sale/sale.route.coffee'
  # Module - categories
  './src/store/categories/categories.module.coffee'
  './src/store/categories/categories.route.coffee'
  # Module - product
  './src/store/product/product.module.coffee'
  './src/store/product/product.route.coffee'
  './src/store/product/product.controller.coffee'
  # Module - added
  './src/store/added/added.module.coffee'
  './src/store/added/added.route.coffee'
  './src/store/added/added.controller.coffee'
  # Module - sku
  './src/store/sku/sku.module.coffee'
  './src/store/sku/sku.route.coffee'
  './src/store/sku/sku.controller.coffee'
  # Module - cart
  './src/store/cart/cart.module.coffee'
  './src/store/cart/cart.route.coffee'
  './src/store/cart/cart.controller.coffee'
  # Module - checkout
  './src/store/checkout/checkout.module.coffee'
  './src/store/checkout/checkout.route.coffee'
  './src/store/checkout/checkout.controller.coffee'
  # Module - order
  './src/store/orders/order.module.coffee'
  './src/store/orders/order.route.coffee'
  './src/store/orders/order.controller.coffee'
  # Module - help
  './src/store/help/help.module.coffee'
  './src/store/help/help.route.coffee'
  './src/store/help/help.controller.coffee'
  # Module - search
  './src/store/search/search.module.coffee'
  './src/store/search/search.route.coffee'
  './src/store/search/search.controller.coffee'
  # Module - footer
  './src/store/footer.controller.coffee'
  # Module - modal
  './src/store/modal/modal.controller.coffee'
  # Module - favorites
  './src/store/favorites/favorites.module.coffee'
  './src/store/favorites/favorites.route.coffee'
  # './src/store/favorites/favorites.controller.coffee'
  './src/store/favorites/favorite.controller.coffee'
  # Module - coupons
  './src/store/coupons/coupons.module.coffee'
  './src/store/coupons/coupons.route.coffee'
  # Module - signup
  './src/store/signup/signup.module.coffee'
  './src/store/signup/signup.route.coffee'
  './src/store/signup/signup.controller.coffee'
  # Module - guests
  './src/store/guests/guests.module.coffee'
  './src/store/guests/guests.route.coffee'
  './src/store/guests/guests.controller.coffee'
  # Module - doorbusters
  './src/store/doorbusters/doorbusters.module.coffee'
  './src/store/doorbusters/doorbusters.route.coffee'
  # './src/store/doorbusters/doorbusters.controller.coffee'
]

### DIRECTIVES ###
sources.storeDirective = [
  './src/ee-shared/components/ee-button-add-to-cart.coffee'
  # './src/ee-shared/components/ee-product-for-store.coffee'
  # './src/ee-shared/components/ee-product-card.coffee'
  # './src/ee-shared/components/ee-product-card-compact.coffee'
  './src/ee-shared/components/ee-collection-nav.coffee'
  './src/ee-shared/components/ee-collection-for-store.coffee'
  './src/ee-shared/components/ee-storefront-announcement.coffee'
  './src/ee-shared/components/ee-storefront-header.coffee'
  './src/ee-shared/components/ee-storefront-scroller.coffee'
  './src/ee-shared/components/ee-storefront-logo.coffee'
  # './src/ee-shared/components/ee-storefront-brand.coffee'
  './src/ee-shared/components/ee-search-sort.coffee'
  './src/ee-shared/components/ee-search-token.coffee'
  './src/ee-shared/components/ee-scroll-to-top.coffee'
  # './src/ee-shared/components/ee-scroll-show.coffee'
  './src/ee-shared/components/ee-product-images.coffee'
  './src/ee-shared/components/ee-empty-message.coffee'
  './src/ee-shared/components/ee-loading.coffee'
  './src/ee-shared/components/ee-signup.coffee'
  './src/ee-shared/components/ee-signup-message.coffee'
  './src/ee-shared/components/ee-favorites-signup.coffee'
  './src/ee-shared/components/ee-favorites-heart.coffee'
  './src/ee-shared/components/ee-image-fadein.coffee'
  './src/ee-shared/components/ee-products-list.coffee'
  './src/ee-shared/components/ee-paypal-button.coffee'
  './src/ee-shared/components/ee-coupon-box.coffee'
  './src/ee-shared/components/ee-product-single.coffee'
  './src/ee-shared/components/ee-product-detail.coffee'
  './src/ee-shared/components/ee-sidebar.coffee'
  './src/ee-shared/components/ee-search-breadcrumb.coffee'
  './src/ee-shared/components/ee-product-breadcrumb.coffee'
  './src/ee-shared/components/ee-cart-sidebar.coffee'
]

module.exports = sources
