import 'package:flutter/material.dart';

import 'button_widget_recheck.dart';

class RecheckScaffoldPage extends StatelessWidget {
  const RecheckScaffoldPage({super.key});

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
            const Text('Hello World.'),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RecheckButtonWidgetPage()));
              },
              child: const Text('Go to Button Widget Page'),
            ),
          ],
        ),
      ),

      //We have use "extendBody: true" to extend the body of the scaffold to the bottom of the screen.
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //We have used "showModalBottomSheet" to show a bottom sheet.
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(
              height: 200,
            ),
          );
        },
      ),
      //We have used "floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked" to set the location of the floating action button.
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //We have used "bottomNavigationBar: BottomNavigationBar(items: const [])" to set the bottom navigation bar.
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'a'),
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'b'),
      ]),
    );
  }
}
