import 'package:flutter/material.dart';

class ReCheckDemoFirstScreen extends StatelessWidget {
  const ReCheckDemoFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Placeholder(),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Ullamco ad.',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Cupidatat nulla nostrud aliquip incididunt officia adipisicing culpa nisi elit aute ullamco exercitation. Aliquip tempor adipisicing eu nisi duis adipisicing ullamco cupidatat. Consectetur fugiat cillum ut aliqua voluptate reprehenderit occaecat commodo laboris duis exercitation amet exercitation. Deserunt exercitation ullamco consectetur mollit exercitation fugiat ullamco Lorem ea eu fugiat nostrud anim. Est eiusmod enim incididunt ipsum id ut occaecat esse aliqua fugiat in deserunt ex in. Sit incididunt minim laboris.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
