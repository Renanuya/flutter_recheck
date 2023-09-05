import 'package:flutter/material.dart';
import 'package:flutter_check/101/demo%20pages/splas_screens/first_screen.dart';
import 'package:flutter_check/101/demo%20pages/splas_screens/second_screen.dart';

class ReCheckSplashPageExample extends StatefulWidget {
  const ReCheckSplashPageExample({super.key});

  @override
  State<ReCheckSplashPageExample> createState() =>
      _ReCheckSplashPageExampleState();
}

class _ReCheckSplashPageExampleState extends State<ReCheckSplashPageExample> {
  final _pageController = PageController();

  int _currentIndex = 0;
  void _currentPageIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 220),
            child: Text('Current Page: $_currentIndex'),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut);
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _currentPageIndex,
        children: const [
          ReCheckDemoFirstScreen(),
          ReCheckDemoSecondScreen(),
        ],
      ),
    );
  }
}
