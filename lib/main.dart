import 'package:flutter/material.dart';
import 'package:fruit_hub/app_routes.dart';
import 'package:fruit_hub/basket_screen.dart';
import 'package:fruit_hub/product_detail_screen.dart';
import 'package:fruit_hub/home_screen.dart';
import 'package:fruit_hub/order_tracking_screen.dart';
import 'package:fruit_hub/products_screen.dart';
import 'package:fruit_hub/successful_order.dart';
import 'package:fruit_hub/welcome_screen.dart';

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
        primarySwatch: texasrose,
        fontFamily: 'Brandon',
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                textStyle: const TextStyle(fontFamily: 'Brandon', fontSize: 16),
                elevation: 0.0)),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
                side: BorderSide(color: texasrose.shade500),
                textStyle: const TextStyle(fontFamily: 'Brandon', fontSize: 16, fontWeight: FontWeight.w500),)),
        appBarTheme: const AppBarTheme(
            foregroundColor: Colors.white,
            elevation: 0.0,
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: 'Brandon',
                fontSize: 24)),
      ),
      home: HomeScreen(),
      routes: {
        "${AppRoute.foodDetail}": (BuildContext context) =>
            const ProductDetailScreen(),
        "${AppRoute.welcome}": (BuildContext context) => const WelcomeScreen(),
        "${AppRoute.basket}": (BuildContext context) => BasketScreen(),
        "${AppRoute.successfulOrder}": (BuildContext context) => const SuccessfulOrderScreen(),
        "${AppRoute.orderTracking}": (BuildContext context) => const OrderTrackingScreen(),
        "${AppRoute.products}": (BuildContext context) => const ProductsScreen(),
      },
    );
  }
}

const MaterialColor texasrose =
    MaterialColor(_texasrosePrimaryValue, <int, Color>{
  50: Color(0xFFFFF4EA),
  100: Color(0xFFFFE4CB),
  200: Color(0xFFFFD2A8),
  300: Color(0xFFFFBF85),
  400: Color(0xFFFFB26B),
  500: Color(_texasrosePrimaryValue),
  600: Color(0xFFFF9C4A),
  700: Color(0xFFFF9240),
  800: Color(0xFFFF8937),
  900: Color(0xFFFF7827),
});
const int _texasrosePrimaryValue = 0xFFFFA451;

const MaterialColor texasroseAccent =
    MaterialColor(_texasroseAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_texasroseAccentValue),
  400: Color(0xFFFFE3D4),
  700: Color(0xFFFFD3BB),
});
const int _texasroseAccentValue = 0xFFFFFFFF;
