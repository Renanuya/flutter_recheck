import 'package:flutter/material.dart';

import 'container_sizedbox_widget_recheck.dart';

class RecheckTextWidgetPage extends StatefulWidget {
  const RecheckTextWidgetPage({super.key});

  @override
  State<RecheckTextWidgetPage> createState() => _RecheckTextWidgetPageState();
}

class _RecheckTextWidgetPageState extends State<RecheckTextWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Recheck'),
      ),
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
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const RecheckContainerSizedboxWidgetPages()));
              },
              child: const Text('Go to Container & SizedBox Widget Page'),
            ),
          ],
        ),
      ),
    );
  }
}
