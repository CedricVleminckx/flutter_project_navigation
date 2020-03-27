import 'package:flutter/material.dart';
import 'package:project_1/firstScreen.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class HomePage extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Home screen", Icons.home),
    new DrawerItem("First screen", Icons.games),
  ];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentDrawerItem = 0;

  _onSelectItem(int index) {
    setState(() => _currentDrawerItem = index);
    Navigator.of(context).pop(); // close the drawer
  }

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new HomePage();
      case 1:
        return new FirstScreen();

      default:
        return new Text("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var drawerItem = widget.drawerItems[i];
      drawerOptions.add(
        new ListTile(
          leading: new Icon(drawerItem.icon),
          title: new Text(drawerItem.title),
          selected: i == _currentDrawerItem,
          onTap: () => _onSelectItem(i),
        )
      );
    }


    return Scaffold(
      appBar: AppBar(
        title: Text(widget.drawerItems[_currentDrawerItem].title),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Text('Header drawer'),
            ),
            Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_currentDrawerItem),
    );
  }
}
