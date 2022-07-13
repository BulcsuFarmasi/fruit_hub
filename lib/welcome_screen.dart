import 'package:flutter/material.dart';
import 'package:fruit_hub/app_colors.dart';
import 'package:fruit_hub/app_decorations.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void goToNextPage() {
    pageController.nextPage(
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }

  void goBackToHome() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        StartPage(goToNextPage),
        InputPage(goBackToHome),
      ],
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage(this.onNext, {Key? key}) : super(key: key);

  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 479,
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(46, 155, 46, 54),
            decoration:
                BoxDecoration(color: Theme.of(context).colorScheme.primary),
            child: Image.asset(
              'assets/images/basket1.png',
              width: 301,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 56),
            decoration: const BoxDecoration(color: Colors.white),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Get The Freshest Fruit Salad Combo',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: textColor),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: textColor),
              ),
              const SizedBox(
                height: 58,
              ),
              ElevatedButton(
                onPressed: onNext,
                child: const Text('Let\'s Continue'),
                style: ElevatedButton.styleFrom(fixedSize: Size(327, 56)),
              )
            ]),
          )
        ],
      ),
    );
  }
}

class InputPage extends StatelessWidget {
  const InputPage(this.onSubmit, {Key? key}) : super(key: key);

  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 479,
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(46, 155, 46, 54),
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.primary),
              child: Image.asset(
                'assets/images/basket2.png',
                width: 301,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 56),
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'What is your first name?',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: textColor),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextField(
                      decoration: inputDecoration,
                      onEditingComplete: () {
                        FocusScope.of(context).unfocus();
                      },
                    ),
                    const SizedBox(
                      height: 42,
                    ),
                    ElevatedButton(
                      onPressed: onSubmit,
                      child: const Text('Start Ordering'),
                      style: ElevatedButton.styleFrom(fixedSize: Size(327, 56)),
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
