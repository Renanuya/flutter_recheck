import 'package:flutter/material.dart';
import 'package:flutter_check/101/5_app_bar_recheck.dart';
import 'package:flutter_check/101/product/components/drawer.dart';

class RecheckButtonWidgetPage extends StatelessWidget {
  const RecheckButtonWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: FixDrawer(),
      appBar: AppBar(
        title: const Text('Flutter Recheck'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //We have used "InkWell" to make a button.
            InkWell(
              onTap: () {},
              child: const Text('This is a InkWell.'),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RecheckAppBarPage()));
              },
              child: const Text('Go to AppBar Page'),
            ),
          ],
        ),
      ),
    );
  }
}
