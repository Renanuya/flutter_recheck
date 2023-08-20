import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '101/text_widget_recheck.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //We have used "appBarTheme" to modify the appbar.
      //We have used "backgroundColor" to change the background color of the appbar.
      //We have used "elevation" to remove the shadow of the appbar.
      //We have used "centerTitle" to center the title of the appbar.
      //We have used "systemOverlayStyle" to change the status bar color.
      theme: ThemeData.dark().copyWith(
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: Colors.white),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const RecheckTextWidgetPage(),
    );
  }
}
