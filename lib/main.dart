import 'package:flutter/material.dart';

import '101/text_widget_recheck.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecheckTextWidgetPage(),
    );
  }
}
