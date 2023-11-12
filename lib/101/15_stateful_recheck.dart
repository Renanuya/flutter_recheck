import 'package:flutter/material.dart';
import 'package:flutter_check/101/demo%20pages/splas_screens/splash_screen_page.dart';
import 'package:flutter_check/101/product/components/drawer.dart';
import 'package:flutter_check/101/product/components/navigation_button.dart';
import 'package:flutter_check/101/product/components/visitor_button.dart';

class ReCheckStatefulPage extends StatefulWidget {
  const ReCheckStatefulPage({super.key});

  @override
  State<ReCheckStatefulPage> createState() => _ReCheckStatefulPageState();
}

class _ReCheckStatefulPageState extends State<ReCheckStatefulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: FixDrawer(),
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const VisitorCounterWidget(),
            NavigationButton(
              buttonText: ('Go to Splash Screen Example Page'),
              route: MaterialPageRoute(
                builder: (context) => const ReCheckSplashPageExample(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
