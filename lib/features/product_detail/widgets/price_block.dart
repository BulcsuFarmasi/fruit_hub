import 'package:flutter/material.dart';
import 'package:fruit_hub/features/product_detail/widgets/quantity_stepper.dart';
import 'package:fruit_hub/shared/app_colors.dart';
import 'package:intl/intl.dart';

class PriceBlock extends StatefulWidget {
  const PriceBlock({
    Key? key,
  }) : super(key: key);

  @override
  State<PriceBlock> createState() => _PriceBlockState();
}

class _PriceBlockState extends State<PriceBlock> {
  final unitPrice = 2000;

  final numberFormat = NumberFormat.decimalPattern();

  int quantity = 1;

  int get totalPrice {
    return unitPrice * quantity;
  }

  void decreaseQuantity() {
    setState(() {
      quantity--;
    });
  }

  void increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        QuantityStepper(
          icon: Icons.remove,
          onPressed: decreaseQuantity,
          active: quantity > 1,
        ),
        const SizedBox(
          width: 24,
        ),
        Text(
          '$quantity',
          style: const TextStyle(fontSize: 24, color: AppColors.textColor),
        ),
        const SizedBox(
          width: 24,
        ),
        QuantityStepper(
          icon: Icons.add,
          onPressed: increaseQuantity,
          active: true,
        ),
        const Spacer(),
        Text(
          '${numberFormat.format(totalPrice)}Ft',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
