import 'package:flutter/material.dart';

class RecheckScaffoldPage extends StatelessWidget {
  const RecheckScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Text('Hello World.'),
      backgroundColor: Colors.white70,
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
