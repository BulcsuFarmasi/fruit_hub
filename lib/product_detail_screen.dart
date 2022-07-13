import 'package:flutter/material.dart';
import 'package:fruit_hub/app_colors.dart';
import 'package:fruit_hub/custom_back_button.dart';
import 'package:fruit_hub/price_block.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: SafeArea(
        child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(top: 22, left: 24),
                  child: const CustomBackButton(),
                ),
              ),
              Image.asset(
                'assets/images/quinoa.png',
                width: 176,
                height: 176,
              ),
              SizedBox(height: 24,),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(24, 40, 24, 16),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Quinoa Fruit Salad',
                        style: TextStyle(fontSize: 32, color: textColor),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const PriceBlock(),
                      const SizedBox(
                        height: 32,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 32,
                      ),
                      Container(
                          padding: const EdgeInsets.only(bottom: 2),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: theme.colorScheme.primary, width: 2))),
                          child: const Text(
                            'One Pack Contains:',
                            style: TextStyle(fontSize: 20, color: textColor),
                          )),
                      const SizedBox(
                        height: 18,
                      ),
                      const Text(
                          'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
                          style: TextStyle(
                            fontSize: 16,
                            color: textColor,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                          'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
                          style: TextStyle(
                            fontSize: 14,
                            color: textColor,
                          )),
                      const SizedBox(
                        height: 39,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const FavoriteIcon(),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(219, 59),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)))),
                            child: const Text('Add to basket'),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}

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
            const BoxDecoration(shape: BoxShape.circle, color: activeColor),
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
