import 'package:flutter/material.dart';
import 'package:flutter_check/101/product/components/drawer.dart';

class ReCheckTextFieldPage extends StatelessWidget {
  const ReCheckTextFieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: FixDrawer(),
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 50,
            buildCounter: (context,
                {int? currentLength, bool? isFocused, maxLength}) {
              return AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 10,
                width: 10.0 * (currentLength ?? 0),
                color: Colors.green,
              );
            },
          ),
        ],
      ),
    );
  }
}
