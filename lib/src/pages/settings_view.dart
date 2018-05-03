part of mylogger;

class SettingsView extends StatelessWidget {
  @override
  Widget build(context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Settings'),
      ),
      body: new Column(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20.0),
            decoration: new BoxDecoration(color: Colors.yellow),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('testy'),
                new Icon(Icons.home),
              ],
            ),
          ),
        ],
      ),
    );
  }
}