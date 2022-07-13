import 'package:flutter/material.dart';
import 'package:fruit_hub/shared/app_colors.dart';

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
            color: active ? AppColors.activeColor : null,
            border: active ? null : Border.all(color: AppColors.borderColor)),
        width: 32,
        height: 32,
        child: Icon(
          icon,
          size: 16,
          color: active ? Theme.of(context).colorScheme.primary : AppColors.borderColor,
        ),
      ),
    );
  }
}