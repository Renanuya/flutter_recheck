import 'package:flutter/material.dart';
import 'package:flutter_check/101/indicator_widget_recheck.dart';

class ReCheckCustomWidgetPage extends StatelessWidget {
  const ReCheckCustomWidgetPage({super.key});
  final customTextSmall = 'Food';
  final customTextMedium = 'Drink';
  final customTextLarge = 'Snack';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _CustomElevatedButtonWidget(
              customTextContext: customTextSmall,
              buttonHeightValue: _ButtonSizeValues.buttonHeightSmall,
              buttonWidthValue: _ButtonSizeValues.buttonWidthSmall,
              onPressed: () {},
            ),
            _CustomElevatedButtonWidget(
              customTextContext: customTextMedium * 3,
              buttonHeightValue: _ButtonSizeValues.buttonHeightMedium,
              buttonWidthValue: _ButtonSizeValues.buttonWidthMedium,
              onPressed: () {},
            ),
            _CustomElevatedButtonWidget(
              customTextContext: customTextLarge * 5,
              buttonHeightValue: _ButtonSizeValues.buttonHeightLarge,
              buttonWidthValue: _ButtonSizeValues.buttonWidthLarge,
              onPressed: () {},
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReCheckIndicatorWidgetPage(),
                  ),
                );
              },
              child: const Text('Go to Indicator Widget Page'),
            ),
          ],
        ),
      ),
    );
  }
}

// -------- Custom Elavated Button Widget -------- //
//This is Custom Elevated Button's Widget
class _CustomElevatedButtonWidget extends StatelessWidget {
  _CustomElevatedButtonWidget({
    super.key,
    required this.customTextContext,
    required this.buttonHeightValue,
    required this.buttonWidthValue,
    required this.onPressed,
  });
  final double buttonHeightValue;
  final double buttonWidthValue;
  final String customTextContext;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeightValue,
      width: buttonWidthValue,
      child: ElevatedButton(
        // I will add the onPressed function later
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: _CustomWidgetPageColors.customColorRed,
          shape: const StadiumBorder(),
        ),
        child: _CustomWidgetTextWidget(
          customText: customTextContext,
        ),
      ),
    );
  }
}

// -------- Custom Text Widget -------- //
// This is Custom Text's Widget
class _CustomWidgetTextWidget extends StatelessWidget {
  const _CustomWidgetTextWidget({
    super.key,
    required this.customText,
  });
  final String? customText;

  @override
  Widget build(BuildContext context) {
    return Text(
      customText!,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: _CustomWidgetPageColors.customColorWhite,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}

// -------- Custom Buttom Values -------- //
// This is Custom Button's Value
class _ButtonSizeValues {
// ignore: unused_field
  static const double buttonHeightSmall = 40;
  // ignore: unused_field
  static const double buttonWidthSmall = 80;
// ignore: unused_field
  static const double buttonHeightMedium = 60;
  // ignore: unused_field
  static const double buttonWidthMedium = 160;
// ignore: unused_field
  static const double buttonHeightLarge = 80;
  // ignore: unused_field
  static const double buttonWidthLarge = 320;
}

// -------- Custom Widget Colors -------- //
// This is Custom Widget's Color
class _CustomWidgetPageColors {
  static const Color customColorWhite = Colors.white;
  static const Color customColorRed = Colors.red;
}
