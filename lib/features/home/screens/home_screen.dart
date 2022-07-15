import 'package:flutter/material.dart';
import 'package:fruit_hub/shared/app_routes.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final homeButtons = [
    HomeButtonDetail('Product Detail', AppRoute.productDetail),
    HomeButtonDetail('Welcome', AppRoute.welcome),
    HomeButtonDetail('Basket', AppRoute.basket),
    HomeButtonDetail('Successful Order', AppRoute.successfulOrder),
    HomeButtonDetail('Order Tracking', AppRoute.orderTracking),
    HomeButtonDetail('Products', AppRoute.products),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Fruit Bar Demo'),),
        body: Column(
            children: homeButtons.map((homeButton) =>  ElevatedButton(
                onPressed: () {
        Navigator.of(context).pushNamed("${homeButton.route}");
        }, child: Text(homeButton.label))).toList(),)
    ,
    );
  }
}

class HomeButtonDetail {
  final String label;
  final AppRoute route;

  HomeButtonDetail(this.label, this.route);
}
