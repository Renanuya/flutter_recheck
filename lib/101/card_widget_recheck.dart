import 'package:flutter/material.dart';

import 'image_recheck.dart';

class ReCheckCardWidgetPage extends StatelessWidget {
  const ReCheckCardWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const MyCardWidget(
              child: SizedBox(
                height: 100,
                width: 200,
                child: Center(child: Text('This is a Card')),
              ),
            ),
            const MyCardWidget(
              child: SizedBox(
                height: 100,
                width: 200,
                child: Center(child: Text('This is a Card 2')),
              ),
            ),
            const MyCardWidget(
              child: SizedBox(
                height: 100,
                width: 200,
                child: Center(child: Text('This is a Card 3')),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReCheckImagePage()));
              },
              child: const Text('Go to Image Page'),
            )
          ],
        ),
      ),
    );
  }
}

class CardMarginValues {
  static EdgeInsetsGeometry margin = const EdgeInsets.all(10);
  static var borderRadiusValue = BorderRadius.circular(10);
}

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      //We have used "margin" property of Card widget to give margin to card
      //We have used "shape" property of Card widget to give border radius to card
      margin: CardMarginValues.margin,
      shape: RoundedRectangleBorder(
        borderRadius: CardMarginValues.borderRadiusValue,
      ),
      child: child,
    );
  }
}
