import 'package:flutter/material.dart';
import 'package:flutter_check/101/product/language/string_constants.dart';

class VisitorCounterWidget extends StatefulWidget {
  const VisitorCounterWidget({super.key});

  @override
  State<VisitorCounterWidget> createState() => _VisitorCounterButtonState();
}

class _VisitorCounterButtonState extends State<VisitorCounterWidget> {
  int visitorValue = 0;

  void visitorCounterFun() {
    setState(() {
      visitorValue++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$visitorValue',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: () {
            visitorCounterFun();
          },
          child: const Text(StringConstants.visitorButtonText),
        ),
      ],
    );
  }
}
