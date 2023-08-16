import 'package:flutter/material.dart';
import 'package:flutter_check/101/padding_widget_recheck.dart';

class ReCheckStatelessWidgetPage extends StatelessWidget {
  const ReCheckStatelessWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // We have used "Extract Widget" to create a custom widget called "MyCustomContainerWidget
            children: [
              MyCustomContainerWidget(
                  containerColor: Colors.red, containerNumber: '2'),
              MyCustomContainerWidget(
                  containerColor: Colors.green, containerNumber: '1'),
              MyCustomContainerWidget(
                  containerColor: Colors.blue, containerNumber: '3'),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ReCheckPaddingWidgetPage()));
            },
            child: const Text('Go to Padding Widget Page'),
          )
        ],
      ),
    );
  }
}

class MyCustomContainerWidget extends StatelessWidget {
//We have used "required" to make sure that the user passes the value of "containerColor" and "containerNumber
//We have used "this." to make sure that the value of "containerColor" and "containerNumber" is assigned to the variable "containerColor" and "containerNumber"
  const MyCustomContainerWidget({
    super.key,
    this.containerColor,
    required this.containerNumber,
  });
//We have used "final" to make sure that the value of "containerColor" and "containerNumber" cannot be changed once it is assigned
//We have used "?" to make sure that the value of "containerColor" and "containerNumber" can be null
  final Color? containerColor;
  final String? containerNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        height: 100,
        width: 50,
        child: Center(
          child: Text(
            //We have used "!" to make sure that the value of "containerNumber" is not null
            containerNumber!,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
        ));
  }
}
