import 'package:flutter/material.dart';
import 'package:fruit_hub/app_decorations.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const labelStyle = TextStyle(fontWeight: FontWeight.w500, fontSize: 20);

    return Container(
      height: 511,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
            child: Column(
              children: [
                const Text(
                  'Card Holders Name',
                  style: labelStyle,
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 56,
                  child: TextField(
                    decoration: inputDecoration,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'Card Number',
                  style: labelStyle,
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 56,
                  child: TextField(
                    decoration: inputDecoration,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Date',
                            style: labelStyle,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                            height: 56,
                            child: TextField(
                              decoration: inputDecoration,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 56,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'CCV',
                          style: labelStyle,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: 56,
                          child: TextField(
                            decoration: inputDecoration,
                          ),
                        ),
                      ],
                    ))
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
              height: 96,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(24))),
              child: Center(
                child: ElevatedButton(
                  child: Text('Complete Order'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Theme.of(context).colorScheme.primary,
                    fixedSize: const Size(137, 56),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
