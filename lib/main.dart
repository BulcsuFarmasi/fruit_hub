import 'package:flutter/material.dart';
import 'package:fruit_hub/shared/app_routes.dart';
import 'package:fruit_hub/features/basket/screens/basket_screen.dart';
import 'package:fruit_hub/features/product_detail/screens/product_detail_screen.dart';
import 'package:fruit_hub/features/home/screens/home_screen.dart';
import 'package:fruit_hub/features/order_tracking/screens/order_tracking_screen.dart';
import 'package:fruit_hub/features/products/screens/products_screen.dart';
import 'package:fruit_hub/features/successful_order/screens/successful_order.dart';
import 'package:fruit_hub/features/welcome/screens/welcome_screen.dart';
import 'package:fruit_hub/shared/app_colors.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit Hub',
      theme: ThemeData(
          primarySwatch: AppColors.primaryColor,
          fontFamily: 'Brandon',
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  textStyle: const TextStyle(
                      fontFamily: 'Brandon', fontSize: 16),
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: AppColors.primaryColor.shade500),
              textStyle: const TextStyle(
                  fontFamily: 'Brandon',
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),),),
          appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          elevation: 0.0,
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: 'Brandon',
              fontSize: 24)),
      inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          fillColor: AppColors.inputColor,
          filled: true),
    ),
    home: HomeScreen(),
    routes: {
    "${AppRoute.productDetail}": (BuildContext context) =>
    const ProductDetailScreen(),
    "${AppRoute.welcome}": (BuildContext context) => const WelcomeScreen(),
    "${AppRoute.basket}": (BuildContext context) => BasketScreen(),
    "${AppRoute.successfulOrder}": (BuildContext context) =>
    const SuccessfulOrderScreen(),
    "${AppRoute.orderTracking}": (BuildContext context) =>
    const OrderTrackingScreen(),
    "${AppRoute.products}": (BuildContext context) =>
    const ProductsScreen(),
    },
    );
  }
}
