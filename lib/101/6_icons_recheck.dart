import 'package:flutter/material.dart';
import 'package:flutter_check/101/7_stateless_recheck.dart';
import 'package:flutter_check/101/product/components/drawer.dart';

class RecheckIconsPage extends StatelessWidget {
  const RecheckIconsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: FixDrawer(),
      //Honestly, I know everything, but I still share to maintain order.
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: prefer_const_constructors
            Icon(Icons.people_alt_outlined),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReCheckStatelessPage()));
              },
              child: const Text('Go to Stateless Widget Page'),
            ),
          ],
        ),
      ),
    );
  }
}
