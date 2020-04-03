import 'package:flutter/material.dart';
import 'package:project_1/drawerComponent.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      drawer: DrawerComponent(currentDrawerItem: 'First screen',)
    );
  }
}
