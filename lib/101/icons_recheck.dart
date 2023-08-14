import 'package:flutter/material.dart';

class RecheckIconsPage extends StatelessWidget {
  const RecheckIconsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //Honestly, I know everything, but I still share to maintain order.
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.people_alt_outlined),
          ],
        ),
      ),
    );
  }
}
