import 'package:flutter/material.dart';
import 'package:flutter_check/101/product/components/drawer.dart';
import 'package:flutter_check/101/product/components/navigation_button.dart';

import '13_list_tile_widget_recheck.dart';

class ReCheckIndicatorWidgetPage extends StatelessWidget {
  const ReCheckIndicatorWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: FixDrawer(),
      appBar: AppBar(),
      body: Scaffold(
          body: Center(
        child: Column(
          children: [
            const CircularProgressIndicator(),
            const SizedBox(
              height: 50,
            ),
            const LinearProgressIndicator(),
            const SizedBox(
              height: 250,
            ),
            NavigationButton(
              buttonText: 'Go to ListTile Widget Page',
              route: MaterialPageRoute(builder: (context) {
                return const ReCheckListTileWidgetPage();
              }),
            ),
          ],
        ),
      )),
    );
  }
}
