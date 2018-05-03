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
        primaryColor: Colors.blue
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> pageTitleList = ['Logs', 'Settings'];
  final List<Widget> pageList = [new LogsView(), new SettingsView()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: pageList[index],
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: index,
        onTap: (index) => setState(() => this.index = index),
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: new Icon(Icons.list),
            title: new Text(pageTitleList[0]),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.settings),
            title: new Text(pageTitleList[1]),
          ),
        ],
      ),
    );
  }
}