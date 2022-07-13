import 'package:flutter/material.dart';
import 'package:fruit_hub/shared/app_colors.dart';

class RecommendedProduct extends StatefulWidget {
  const RecommendedProduct({required this.product, Key? key}) : super(key: key);

  final Product product;

  @override
  State<RecommendedProduct> createState() => _RecommendedProductState();
}

class _RecommendedProductState extends State<RecommendedProduct> {

  bool isFavorite = false;

  void toggleIsFavorite () {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 152,
        height: 183,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(16), boxShadow: const [
         BoxShadow(
              color: Color(0x0D202020), offset: Offset(2, 30), blurRadius: 60),
        ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      top: 22,
                      left: 36,
                      child: Image.asset(
                        widget.product.imagePath,
                        width: 80,
                        height: 80,
                      )),
                  Positioned(
                      top: 16,
                      right: 16,
                      child: GestureDetector(
                        onTap: toggleIsFavorite,
                        child: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_outline,
                          size: 16,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  widget.product.name,
                  style: const TextStyle(
                      color: AppColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${widget.product.price}Ft',
                  style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.primary),
                ),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.activeColor,
                  ),
                  width: 24,
                  height: 24,
                  child: Icon(
                    Icons.add,
                    size: 12,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                )
              ],
            ),
          ],
        ));
  }
}

class Product {
  String name;
  int price;
  String imagePath;

  Product({required this.name, required this.price, required this.imagePath});
}
