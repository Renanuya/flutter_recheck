import 'package:flutter/material.dart';
import 'package:flutter_check/101/scaffold_recheck.dart';

class RecheckContainerSizedboxWidgetPages extends StatelessWidget {
  const RecheckContainerSizedboxWidgetPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //! Ask
            const SizedBox.shrink(),
            //In this SizedBox we have used "SizedBox.square" to make a square box.
            // With "dimension" we have set the size of the box. (200x200)
            SizedBox.square(
              dimension: 200,
              child: Text('This is a square box. ' * 10),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RecheckScaffoldPage()));
              },
              child: const Text('Go to Container & SizedBox Widget Page'),
            ),
          ],
        ),
      ),
    );
  }
}
