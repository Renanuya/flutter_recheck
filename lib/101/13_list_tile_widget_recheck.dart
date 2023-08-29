import 'package:flutter/material.dart';

class ReCheckListTileWidgetPage extends StatelessWidget {
  const ReCheckListTileWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                onTap: () {},
                title: const Text('Apple Arcade'),
                subtitle: const Text('6 Sep • Services'),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://i.pinimg.com/564x/b0/d2/6e/b0d26e8122dffa8a51081f7f814581d7.jpg',
                  ),
                ),
                trailing: (Text('- \$3,99',
                    style: Theme.of(context).textTheme.titleMedium)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
