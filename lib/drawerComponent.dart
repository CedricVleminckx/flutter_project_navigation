import 'package:flutter/material.dart';
import 'package:project_1/firstScreen.dart';
import 'package:project_1/homePage.dart';

class DrawerItem {
  String title;
  IconData icon;
  Widget widget;
  DrawerItem(this.title, this.icon, this.widget);
}

class DrawerComponent extends StatefulWidget {
  final String currentDrawerItem;

  DrawerComponent({this.currentDrawerItem});

  final drawerItems = [
    new DrawerItem('Home screen', Icons.home, HomePage()),
    new DrawerItem('First screen', Icons.games, FirstScreen()),
  ];

  @override
  _DrawerComponentState createState() => _DrawerComponentState();
}

class _DrawerComponentState extends State<DrawerComponent> {
  _onSelectItem(int index) {
    Navigator.of(context).pop(); // close the drawer
    Navigator.push(
      //Go to new page
      context,
      MaterialPageRoute(
        builder: (context) => widget.drawerItems[index].widget,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var drawerItem = widget.drawerItems[i];
      drawerOptions.add(
        ListTile(
          leading: Icon(drawerItem.icon),
          title: Text(drawerItem.title),
          selected: drawerItem.title == widget.currentDrawerItem,
          onTap: () => _onSelectItem(i),
        ),
      );
    }

    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Text('Header'),
          ),
          Column(
            children: drawerOptions,
          )
        ],
      ),
    );
  }
}
