enum AppRoute {

  productDetail('/product-detail'),
  welcome('/welcome'),
  basket('/basket'),
  successfulOrder('/successful-order'),
  orderTracking('/order-tracking'),
  products('/products');

  final String routeName;

  const AppRoute(this.routeName);

  @override
  String toString() => routeName;
}