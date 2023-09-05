import 'package:flutter/material.dart';
import 'package:flutter_check/101/14_stack_widget_recheck.dart';
import 'package:flutter_check/101/product/components/navigation_button.dart';
import 'package:kartal/kartal.dart';

class ReCheckListTileWidgetPage extends StatelessWidget {
  const ReCheckListTileWidgetPage({super.key});

  final String tileTitleText = 'Apple Arcade';
  final String tileSubTitleText = '6 Sep • Services';
  final String tileTrailingText = '- \$3,99';
  final String imageUrl =
      'https://i.pinimg.com/564x/b0/d2/6e/b0d26e8122dffa8a51081f7f814581d7.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: context.padding.low,
        child: Column(
          children: [
            Card(
              child: CardPayment(
                  tileTitleText: tileTitleText,
                  tileSubTitleText: tileSubTitleText,
                  imageUrl: imageUrl,
                  tileTrailingText: tileTrailingText),
            ),
            context.sized.emptySizedHeightBoxHigh,
            NavigationButton(
              buttonText: 'Go to Stack Widget Page',
              route: MaterialPageRoute(builder: (context) {
                return const ReCheckStackWidgetPage();
              }),
            )
          ],
        ),
      ),
    );
  }
}

class CardPayment extends StatelessWidget {
  const CardPayment({
    super.key,
    required this.tileTitleText,
    required this.tileSubTitleText,
    required this.imageUrl,
    required this.tileTrailingText,
  });

  final String tileTitleText;
  final String tileSubTitleText;
  final String imageUrl;
  final String tileTrailingText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(tileTitleText),
      subtitle: Text(tileSubTitleText),
      leading: ClipRRect(
        borderRadius: context.border.lowBorderRadius,
        child: Image.network(imageUrl),
      ),
      trailing: (Text(tileTrailingText,
          style: Theme.of(context).textTheme.titleMedium)),
    );
  }
}
