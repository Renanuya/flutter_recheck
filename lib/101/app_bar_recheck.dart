import 'package:flutter/material.dart';

import 'icons_recheck.dart';

class RecheckAppBarPage extends StatelessWidget {
  const RecheckAppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //We have used all AppBar properties in main.dart file.
      //We have used "actions" to add a button in the appbar.
      appBar: AppBar(
        title: const Text('Flutter Recheck'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_circle_rounded))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is a AppBar Page.'),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RecheckIconsPage()));
              },
              child: const Text('Go to Icons Page'),
            ),
          ],
        ),
      ),
    );
  }
}
