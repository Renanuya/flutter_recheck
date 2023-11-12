import 'package:flutter/material.dart';

class FixDrawer extends StatelessWidget {
  final List<DrawerItem> drawerItems = [
    DrawerItem(title: 'Text Widget', route: '/101/1_text_widget_recheck'),
    DrawerItem(title: 'Ayarlar', route: '/settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          for (var item in drawerItems)
            ListTile(
              title: Text(item.title),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, item.route); // Sayfaya yönlendir
              },
            ),
        ],
      ),
    );
  }
}

class DrawerItem {
  final String title;
  final String route;

  DrawerItem({required this.title, required this.route});
}
