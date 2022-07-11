import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:fruit_hub/app_colors.dart';

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
          style: const TextStyle(fontSize: 24, color: textColor),
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

class QuantityStepper extends StatelessWidget {
  const QuantityStepper({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.active,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onPressed;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: active ? onPressed : null,
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: active ? activeColor : null,
            border: active ? null : Border.all(color: borderColor)),
        width: 32,
        height: 32,
        child: Icon(
          icon,
          size: 16,
          color: active ? Theme.of(context).colorScheme.primary : borderColor,
        ),
      ),
    );
  }
}
