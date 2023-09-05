import 'package:flutter/material.dart';
import 'package:flutter_check/101/15_stateful_recheck.dart';
import 'package:flutter_check/101/product/components/navigation_button.dart';

class ReCheckStackWidgetPage extends StatelessWidget {
  const ReCheckStackWidgetPage({super.key});

  final imageURL =
      'https://www.pngarts.com/files/3/Smiling-Man-PNG-Image-Background.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    width: 250,
                    decoration: const BoxDecoration(
                      color: Color(0xffB0AAFC),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 100,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF8DFFD),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -20,
                    right: -50,
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 246, 237, 248),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -15,
                    right: 20,
                    child: Container(
                      height: 125,
                      width: 125,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 246, 237, 248),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -40,
                    right: 100,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 246, 237, 248),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -40,
                    right: -30,
                    child: Image.network(imageURL, height: 300, width: 300),
                  ),
                ],
              ),
            ),
          ),
          NavigationButton(
            buttonText: ('Go to Stateful Page'),
            route: MaterialPageRoute(
              builder: (context) => const ReCheckStatefulPage(),
            ),
          ),
        ],
      ),
    );
  }
}
