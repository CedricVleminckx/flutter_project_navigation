import 'package:flutter/material.dart';
import 'package:project_1/homePage.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      drawer: new Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Text('Header'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Text('Home Screen'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
                new PageRouteBuilder(
                    pageBuilder: (BuildContext context, _, __) {
                      return new FirstScreen();
                    },
                    transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
                      return new FadeTransition(
                        opacity: animation,
                        child: child
                      );
                    }
                  );
              },
              child: Text('First Screen'),
            ),
          ],
        ),
      ),
    );
  }
}