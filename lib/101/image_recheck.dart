import 'package:flutter/material.dart';
import 'package:flutter_check/101/demo%20pages/example_page_recheck.dart';

class ReCheckImagePage extends StatelessWidget {
  const ReCheckImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              //We have used "Image.network" to load image from network.
              //We have used "errorBuilder" to show a custom widget when the image fails to load.
              child: Image.network(
                'https://img.freepik.com/free-icon/books-stack-three_318-45543.jpg',
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error),
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
                    builder: (context) => const ReCheckExamplePage(),
                  ),
                );
              },
              child: const Text('Go to Example Page'),
            ),
          ],
        ),
      ),
    );
  }
}
