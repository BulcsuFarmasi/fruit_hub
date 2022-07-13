import 'package:flutter/material.dart';
import 'package:fruit_hub/shared/app_colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: const Icon(Icons.arrow_back_ios_rounded),
      label: const Text('Go back'),
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(6),
          primary: Colors.white,
          onPrimary: AppColors.textColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(100)))),
    );
  }
}
