import 'package:flutter/material.dart';
import 'package:fruit_hub/shared/app_colors.dart';

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({
    Key? key,
  }) : super(key: key);

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: toggleFavorite,
      child: Container(
        decoration:
        const BoxDecoration(shape: BoxShape.circle, color: AppColors.activeColor),
        width: 48,
        height: 48,
        child: Icon(
          (isFavorite) ? Icons.favorite : Icons.favorite_outline,
          size: 24,
          color: theme.colorScheme.primary,
        ),
      ),
    );
  }
}