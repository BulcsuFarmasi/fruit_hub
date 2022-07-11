import 'package:flutter/material.dart';

class SuccessfulOrderScreen extends StatelessWidget {
  const SuccessfulOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 64, right: 64, top: 160),
        child: Column(
          children: [
            Image.asset(
              'assets/images/success_border.png',
              width: 164,
              height: 164,
            ),
            const SizedBox(
              height: 88,
            ),
            const Text(
              'Congratulations!!!',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Your order have been taken and is being attended to',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 56,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(133, 56),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text('Track order'),
            ),
            const SizedBox(
              height: 48,
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(181, 56),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text('Continue shopping'),)
          ],
        ),
      ),
    );
  }
}
