library mylogger;

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

part 'pages/logs_view.dart';
part 'pages/settings_view.dart';

class MyLogger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'MyLogger';
    return new MaterialApp(
      title: title,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new CupertinoTabScaffold(
      tabBar: new CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: new Icon(Icons.list),
            title: new Text('Logs'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.settings),
            title: new Text('Settings'),
          ),
        ]
      ),
      tabBuilder: (BuildContext context, int index) {
        return new CupertinoTabView(
          builder: (BuildContext context) {
            if (index == 0) {
              return new LogsView();
            } else {
              return new SettingsView();
            }
          },
        );
      },
    );
  }
}