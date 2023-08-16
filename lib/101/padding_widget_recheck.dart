import 'package:flutter/material.dart';

import 'card_widget_recheck.dart';

class ReCheckPaddingWidgetPage extends StatelessWidget {
  const ReCheckPaddingWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //We have used "Padding" widged to give padding from the sides
      body: Padding(
        padding: PaddingWidgetSizes().paddingHorizontalSize,
        child: Center(
          child: Column(
            children: [
              //We have used "EdgeInsets.zero" to not give any padding
              const Padding(
                padding: EdgeInsets.zero,
                child: MyPaddingContainer(
                  paddingContainerColor: Colors.white,
                  paddingContainerHeight: 50,
                ),
              ),
              //We have used "EdgeInsets.symmetric(vertical: 10)" to give padding from top and bottom
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: MyPaddingContainer(
                  paddingContainerColor: Colors.white,
                  paddingContainerHeight: 50,
                ),
              ),
              //We have used "EdgeInsets.symmetric(horizontal: 10)" to give padding from left and right
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: MyPaddingContainer(
                  paddingContainerColor: Colors.white,
                  paddingContainerHeight: 50,
                ),
              ),
              //We have used "EdgeInsets.all(50)" to give padding from all sides
              const Padding(
                padding: EdgeInsets.all(50.0),
                child: MyPaddingContainer(
                    paddingContainerColor: Colors.white,
                    paddingContainerHeight: 50),
              ),
              //We have used "EdgeInsets.only(bottom: 50)" to give padding from bottom
              const Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: MyPaddingContainer(
                  paddingContainerColor: Colors.white,
                  paddingContainerHeight: 50,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ReCheckCardWidgetPage()));
                  },
                  child: const Text('Go to Card Widget Page'))
            ],
          ),
        ),
      ),
    );
  }
}

class MyPaddingContainer extends StatelessWidget {
  const MyPaddingContainer({
    super.key,
    required this.paddingContainerColor,
    required this.paddingContainerHeight,
  });

  final Color? paddingContainerColor;
  final double? paddingContainerHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: paddingContainerColor,
      height: paddingContainerHeight,
    );
  }
}

class PaddingWidgetSizes {
  final paddingHorizontalSize = const EdgeInsets.symmetric(horizontal: 20);
}
