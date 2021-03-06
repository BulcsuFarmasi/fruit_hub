import 'package:flutter/material.dart';
import 'package:fruit_hub/shared/app_colors.dart';
import 'package:fruit_hub/features/products/widgets/product.dart';
import 'package:fruit_hub/features/products/widgets/recommended_product.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  final notActiveStyle = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF938DB5));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset('assets/images/menu.png'),
        ),
        leadingWidth: 46,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 32, top: 10),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/basket_icon.png',
                  width: 24,
                  height: 24,
                ),
                const Text(
                  'My Basket',
                  style: TextStyle(color: AppColors.textColor, fontSize: 10),
                ),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 257,
              child: RichText(
                  text: const TextSpan(
                      style: TextStyle(
                          fontSize: 20,
                          color: AppColors.textColor,
                          fontFamily: 'Brandon'),
                      children: [
                    TextSpan(text: 'Hello Tony, '),
                    TextSpan(
                        text: 'What fruit salad combo do you want today?',
                        style: TextStyle(fontWeight: FontWeight.w500))
                  ])),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                    width: 288,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search for fruit salad combos'),
                    )),
                Image.asset(
                  'assets/images/filter.png',
                  width: 26,
                  height: 16,
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Recommended Combo',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RecommendedProduct(
                    product: Product(
                        name: 'Honey lime combo',
                        price: 2000,
                        imagePath: 'assets/images/honey_lime.png')),
                RecommendedProduct(
                    product: Product(
                        name: 'Berry mango combo',
                        price: 8000,
                        imagePath: 'assets/images/berry_mango.png')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hottest',
                      style: TextStyle(
                          fontSize: 24,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: 22,
                      height: 8,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 2))),
                    )
                  ],
                ),
                Text(
                  'Popular',
                  style: notActiveStyle,
                ),
                Text(
                  'New Combo',
                  style: notActiveStyle,
                ),
                Text(
                  'Top',
                  style: notActiveStyle,
                )
              ],
            ),
            const SizedBox(height: 24,),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ProductView(
                      product: Product(
                          name: 'Quinoa fruit salad',
                          price: 10000,
                          imagePath: 'assets/images/quinoa.png'),
                      backgroundColor: const Color(0xFFFFFAEB)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ProductView(
                        product: Product(
                            name: 'Tropical fruit salad',
                            price: 10000,
                            imagePath: 'assets/images/tropical.png'),
                        backgroundColor: const Color(0xFFFEF0F0)),
                  ),
                  ProductView(
                      product: Product(
                          name: 'Melon fruit salad',
                          price: 10000,
                          imagePath: 'assets/images/melon.png'),
                      backgroundColor: const Color(0xFFF1EFF6)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
