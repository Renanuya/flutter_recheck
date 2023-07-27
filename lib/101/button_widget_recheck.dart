import 'package:flutter/material.dart';

class RecheckButtonWidgetPage extends StatelessWidget {
  const RecheckButtonWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            //We have used "InkWell" to make a button.
            InkWell(
              onTap: () {},
              child: const Text('This is a InkWell.'),
            ),
          ],
        ),
      ),
    );
  }
}
