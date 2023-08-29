import 'package:flutter/material.dart';

import '13_list_tile_widget_recheck.dart';

class ReCheckIndicatorWidgetPage extends StatelessWidget {
  const ReCheckIndicatorWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReCheckListTileWidgetPage(),
                  ),
                );
              },
              child: const Text('Go to list Tile Page'),
            ),
          ],
        ),
      )),
    );
  }
}
