import 'package:flutter/material.dart';

class RecheckTextWidgetPage extends StatelessWidget {
  const RecheckTextWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //In this text widget we have used "Theme.of(context).textTheme.bodyLarge" to get the text style from the theme.
            //After that we have used "copyWith" to change the color of the text out of theme.
            //We have used "* 10" to make the text long enough to see the effect of the text style.
            Text(
              'This is text widget.' * 10,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: const Color(0xffCC5A71),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
