import 'package:flutter/material.dart';
import 'package:project_1/drawerComponent.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _homePageBNItem = 0;

  static const List<Widget> _widgetOptions = <Widget>[ // this are the different widgets to display as body
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
  ];

  _onItemTapped(int index) {
    setState(() {
      _homePageBNItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      drawer: DrawerComponent(currentDrawerItem: 'Home screen'),
      body: Center(
        child: _widgetOptions.elementAt(_homePageBNItem),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
        ],
        currentIndex: _homePageBNItem,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
