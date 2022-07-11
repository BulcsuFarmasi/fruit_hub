import 'package:flutter/material.dart';
import 'package:fruit_hub/app_colors.dart';
import 'package:fruit_hub/recommended_product.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key, required this.product, required this.backgroundColor}) : super(key: key);

  final Product product;
  final Color backgroundColor;

  @override
  State<ProductView> createState() => _ProductState();
}

class _ProductState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140,
        height: 150,
        padding: EdgeInsets.all(10),
        decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(10), color: widget.backgroundColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      top: 9,
                      left: 28,
                      child: Image.asset(
                        widget.product.imagePath,
                        width: 64,
                      )),
                  Positioned(
                      top: 6,
                      right: 6,
                      child: Icon(
                        Icons.favorite_outline,
                        size: 16,
                        color: Theme.of(context).colorScheme.primary,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  widget.product.name,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )),
            SizedBox(
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
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: activeColor,
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