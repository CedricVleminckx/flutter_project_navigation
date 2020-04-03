import 'package:flutter/material.dart';
import 'package:project_1/drawerComponent.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      drawer: DrawerComponent()
    );
  }
}
