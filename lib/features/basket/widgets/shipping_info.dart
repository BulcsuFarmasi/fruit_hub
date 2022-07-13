import 'package:flutter/material.dart';
import 'package:fruit_hub/features/basket/widgets/card_info.dart';

class ShippingInfo extends StatelessWidget {
  const ShippingInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const  labelStyle = TextStyle(fontWeight: FontWeight.w500, fontSize: 20);

    return Container(
      height: 406,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Delivery Address', style: labelStyle,),
          const SizedBox(height: 16,),
          const TextField(),
          const SizedBox(height: 24,),
          const Text('Number we can call', style: labelStyle,),
          const SizedBox(height: 16,),
          const TextField(),
          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: const Text('Pay on delivery'),
              ),
              OutlinedButton(onPressed: () {
                Navigator.of(context).pop();
                showModalBottomSheet(context: context,
                    builder: (BuildContext context) => const CardInfo(),
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24),)));
              }, child: const Text('Pay with card'),)
            ],
          )
        ],
      ),
    );
  }
}
