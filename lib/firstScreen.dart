import 'package:flutter/material.dart';
import 'package:project_1/drawerComponent.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _firstScreenBNItem = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    // this are the different widgets to display as body
    Text(
      'Index 0: Games',
    ),
    Text(
      'Index 1: Statistics',
    ),
    Text(
      'Index 2: Settings',
    ),
  ];

  _onItemTapped(int index) {
    setState(() {
      _firstScreenBNItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      drawer: DrawerComponent(currentDrawerItem: 'First screen'),
      body: Center(
        child: _widgetOptions.elementAt(_firstScreenBNItem),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.games),
            title: Text('Games'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            title: Text('Statistics'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
        currentIndex: _firstScreenBNItem,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
