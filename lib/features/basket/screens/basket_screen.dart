import 'package:flutter/material.dart';
import 'package:fruit_hub/shared/app_colors.dart';
import 'package:fruit_hub/shared/widgets/custom_back_button.dart';
import 'package:fruit_hub/features/basket/widgets/shipping_info.dart';
import 'package:fruit_hub/features/basket/widgets/basket_list_item.dart';

class BasketScreen extends StatelessWidget {
  BasketScreen({Key? key}) : super(key: key);

  final List<BasketItem> basketItems = [
    BasketItem(
        imageBackground: const Color(0xFFFFFAEB),
        imagePath: 'assets/images/quinoa.png',
        name: 'Quinoa fruit salad',
        quantity: 2,
        price: 20000),
    BasketItem(
        imageBackground: const Color(0xFFF1EFF6),
        imagePath: 'assets/images/melon.png',
        name: 'Melon fruit salad',
        quantity: 2,
        price: 20000),
    BasketItem(
        imageBackground: const Color(0xFFFEF0F0),
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
          margin: const EdgeInsets.only(left: 24),
          child: const CustomBackButton(),
        ),
        leadingWidth: 125,
        title: const Text('My Basket'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 49,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (BuildContext context, int index) =>
                    BasketListItem(basketItem: basketItems[index]),
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
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
                    Text('60,000Ft',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: AppColors.textColor)),
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
                  style: ElevatedButton.styleFrom(fixedSize: const Size(199, 56)),
                  child: const Text('Checkout'),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 47,
          )
        ],
      ),
    );
  }
}
