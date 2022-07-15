import 'package:flutter/material.dart';
import 'package:fruit_hub/shared/app_colors.dart';
import 'package:fruit_hub/features/products/widgets/recommended_product.dart';

class ProductView extends StatefulWidget {
  const ProductView(
      {Key? key, required this.product, required this.backgroundColor})
      : super(key: key);

  final Product product;
  final Color backgroundColor;

  @override
  State<ProductView> createState() => _ProductState();
}

class _ProductState extends State<ProductView> {
  bool isFavorite = false;

  void toggleIsFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140,
        height: 150,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: widget.backgroundColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        widget.product.imagePath,
                        width: 64,
                      )),
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: toggleIsFavorite,
                      child: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_outline,
                        size: 16,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  )
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
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                )),
            const SizedBox(
              height: 4,
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
