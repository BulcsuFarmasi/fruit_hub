import 'package:flutter/material.dart';
import 'package:fruit_hub/app_colors.dart';
import 'package:fruit_hub/custom_back_button.dart';
import 'package:fruit_hub/shipping_info.dart';

class BasketScreen extends StatelessWidget {
  BasketScreen({Key? key}) : super(key: key);

  final List<BasketItem> basketItems = [
    BasketItem(
        imageBackground: Color(0xFFFFFAEB),
        imagePath: 'assets/images/quinoa.png',
        name: 'Quinoa fruit salad',
        quantity: 2,
        price: 20000),
    BasketItem(
        imageBackground: Color(0xFFF1FFE),
        imagePath: 'assets/images/melon.png',
        name: 'Melon fruit salad',
        quantity: 2,
        price: 20000),
    BasketItem(
        imageBackground: Color(0xFFFEF0F0),
        imagePath: 'assets/images/tropical.png',
        name: 'Tropical fruit salad',
        quantity: 2,
        price: 20000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 142,
        leading: Container(
          padding: const EdgeInsets.symmetric(vertical: 50),
          margin: EdgeInsets.only(left: 24),
          child: const CustomBackButton(),
        ),
        leadingWidth: 124,
        title: const Text('My Basket'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 49,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (BuildContext context, int index) =>
                    BasketListItem(basketItem: basketItems[index]),
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(),
                itemCount: basketItems.length),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Total',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text('60000Ft',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: textColor)),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(24),)),
                        builder: (BuildContext context) {
                          return const ShippingInfo();
                        });
                  },
                  style: ElevatedButton.styleFrom(fixedSize: Size(199, 56)),
                  child: const Text('Checkout'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 47,
          )
        ],
      ),
    );
  }
}

class BasketListItem extends StatelessWidget {
  const BasketListItem({Key? key, required this.basketItem}) : super(key: key);

  final BasketItem basketItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 65,
        height: 64,
        decoration: BoxDecoration(
          color: basketItem.imageBackground,
          borderRadius: BorderRadius.all(Radius.circular(10)),
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
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      subtitle: Text('${basketItem.quantity}packs'),
      trailing: Text('${basketItem.price}Ft',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
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
