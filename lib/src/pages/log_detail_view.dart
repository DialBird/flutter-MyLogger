part of mylogger;

class LogDetailView extends StatelessWidget {
  final MyLog myLog;
  LogDetailView({Key key, @required this.myLog}) : super(key: key);

  @override
  Widget build(context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(myLog.goal),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            color: Colors.black12,
            padding: new EdgeInsets.only(top: 20.0, left: 10.0),
            child: new Text('Start at', style: new TextStyle(fontWeight: FontWeight.bold)),
          ),
          new ListTile(
            title: Text(dateFormatter.format(myLog.startAt)),
          ),
          new Container(
            color: Colors.black12,
            padding: new EdgeInsets.only(top: 20.0, left: 10.0),
            child: new Text('End at', style: new TextStyle(fontWeight: FontWeight.bold)),
          ),
          new ListTile(
            title: Text(dateFormatter.format(myLog.endAt)),
          ),
        ],
      ),
    );
  }
}