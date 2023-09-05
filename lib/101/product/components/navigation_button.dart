import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    super.key,
    required this.buttonText,
    required this.route,
  });
  final String buttonText;
  final Route route;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, route);
      },
      child: Text(buttonText),
    );
  }
}
