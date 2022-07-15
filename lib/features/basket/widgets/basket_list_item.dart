import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BasketListItem extends StatelessWidget {
  BasketListItem({Key? key, required this.basketItem}) : super(key: key);

  final BasketItem basketItem;
  final numberFormat = NumberFormat.decimalPattern();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 65,
        height: 64,
        decoration: BoxDecoration(
          color: basketItem.imageBackground,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Image.asset(
            basketItem.imagePath,
            width: 40,
          ),
        ),
      ),
      title: Text(
        basketItem.name,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      subtitle: Text('${basketItem.quantity}packs'),
      trailing: Text('${numberFormat.format(basketItem.price)}Ft',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
    );
  }
}

class BasketItem {
  Color imageBackground;
  String imagePath;
  String name;
  int quantity;
  int price;

  BasketItem({
    required this.imageBackground,
    required this.imagePath,
    required this.name,
    required this.quantity,
    required this.price,
  });
}
