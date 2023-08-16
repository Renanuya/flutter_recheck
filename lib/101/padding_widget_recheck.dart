import 'package:flutter/material.dart';

import 'card_widget_recheck.dart';

class ReCheckPaddingWidgetPage extends StatelessWidget {
  const ReCheckPaddingWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: PaddingWidgetSizes().paddingHorizontalSize,
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.zero,
                child: MyPaddingContainer(
                  paddingContainerColor: Colors.white,
                  paddingContainerHeight: 50,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: MyPaddingContainer(
                  paddingContainerColor: Colors.white,
                  paddingContainerHeight: 50,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: MyPaddingContainer(
                  paddingContainerColor: Colors.white,
                  paddingContainerHeight: 50,
                ),
              ),
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
