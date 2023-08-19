import 'package:flutter/material.dart';

import '../custom_widget_page.dart';

class ReCheckExamplePage extends StatelessWidget {
  const ReCheckExamplePage({super.key});

  final titleText = 'Create Your First Note';
  final paragraphText =
      'Add a note about anything (your thoughts on climate change, or your history essay and share it with the world';
  final buttonText = 'Add Note';
  final imageLink =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Books_with_Apple_Flat_Icon_Vector.svg/1024px-Books_with_Apple_Flat_Icon_Vector.svg.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: _PagePaddingValues.horizontalPaddingValue,
        child: Column(
          children: [
            Center(
              child: _PageImageWidget(imageUrl: imageLink),
            ),
            const _PageEmptySpaceWidget(
                pageHeight: _PageHeightValues.emptySpaceMedium),
            _TitleTextWidget(titleText: titleText),
            const _PageEmptySpaceWidget(
                pageHeight: _PageHeightValues.emptySpaceSmall),
            _ParagraphTextWidget(paragraphText: paragraphText),
            const _PageEmptySpaceWidget(
                pageHeight: _PageHeightValues.emptySpaceExtraLarge),
            _PageElevatedButtonWidget(buttonText: buttonText),
          ],
        ),
      ),
    );
  }
}

// --------- Empty Space Widget & Values --------- //

//This is Page Empty Space's Widget
class _PageEmptySpaceWidget extends StatelessWidget {
  const _PageEmptySpaceWidget({
    super.key,
    required this.pageHeight,
  });
  final double? pageHeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: pageHeight!,
    );
  }
}

//This is Page Empty Space's Height
class _PageHeightValues {
// ignore: unused_field
  static const double emptySpaceExtraLarge = 100;
  // ignore: unused_field
  static const double emptySpaceLarge = 50;
  // ignore: unused_field
  static const double emptySpaceMedium = 20;
  // ignore: unused_field
  static const double emptySpaceSmall = 10;
}

// --------- Paragraph Text & Title Text Widget --------- //

//This is Page Paragraph Text's Widget
class _ParagraphTextWidget extends StatelessWidget {
  const _ParagraphTextWidget({
    super.key,
    required this.paragraphText,
  });

  final String paragraphText;

  @override
  Widget build(BuildContext context) {
    return Text(
      paragraphText,
      textAlign: TextAlign.center,
    );
  }
}

//This is Page Title Text's Widget
class _TitleTextWidget extends StatelessWidget {
  const _TitleTextWidget({
    super.key,
    required this.titleText,
  });

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }
}

//This is Button Text's Widget
class _ButtonTextWidget extends StatelessWidget {
  const _ButtonTextWidget({
    super.key,
    required this.buttonText,
  });

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Text(buttonText);
  }
}
// --------- Image Widget --------- //

// This is Page Image's Widget

class _PageImageWidget extends StatelessWidget {
  const _PageImageWidget({
    super.key,
    required this.imageUrl,
  });

  final String? imageUrl;
  final Icon errorIcon = const Icon(Icons.image);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl!,
      errorBuilder: (context, error, stackTrace) => errorIcon,
    );
  }
}

// --------- Padding Values --------- //
// This is Page Padding's Value
class _PagePaddingValues {
  static const EdgeInsets horizontalPaddingValue =
      EdgeInsets.symmetric(horizontal: 20.0);
}

// --------- Elevated Button Widget --------- //
// This is Page Elevated Button's Widget
class _PageElevatedButtonWidget extends StatelessWidget {
  _PageElevatedButtonWidget({
    super.key,
    required this.buttonText,
  });

  final String buttonText;
  final double buttonHeightValue = 50;
  final double buttonWitdhtValue = 300;
  final PageRoute pageRoute = MaterialPageRoute(
    builder: (context) => const ReCheckCustomWidgetPage(),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeightValue,
      width: buttonWitdhtValue,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, pageRoute);
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: _ButtonTextWidget(buttonText: buttonText),
      ),
    );
  }
}
