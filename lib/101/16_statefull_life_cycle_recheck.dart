import 'package:flutter/material.dart';
import 'package:flutter_check/101/17_text_field_recheck.dart';
import 'package:flutter_check/101/product/components/navigation_button.dart';

class ReCheckStatefulLifeCyclePage extends StatefulWidget {
  const ReCheckStatefulLifeCyclePage({super.key, required this.message});
  final String message;

  @override
  State<ReCheckStatefulLifeCyclePage> createState() =>
      _ReCheckStatefulLifeCyclePageState();
}

class _ReCheckStatefulLifeCyclePageState
    extends State<ReCheckStatefulLifeCyclePage> {
  String _message = '';
  late final bool _isOdd;

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;

    if (_isOdd) {
      _message += 'odd';
    } else {
      _message += 'even';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: Column(
        children: [
          Center(
            child: _isOdd
                ? TextButton(onPressed: () {}, child: Text(_message))
                : ElevatedButton(
                    onPressed: () {},
                    child: Text(_message),
                  ),
          ),
          NavigationButton(
            buttonText: 'Go to Text Field Page',
            route: MaterialPageRoute(
                builder: (context) => const ReCheckTextFieldPage()),
          )
        ],
      ),
    );
  }
}
