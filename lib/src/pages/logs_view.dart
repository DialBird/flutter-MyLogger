part of mylogger;

class LogsView extends StatefulWidget {
  @override
  _LogsViewStatus createState() => new _LogsViewStatus();
}

class _LogsViewStatus extends State<LogsView> {
  final url = 'http://localhost:8082/mylogs';
  List<MyLog> myLogs = [];

  _updateData() async {
    final response = await http.get(url);
    List<dynamic>  data= json.decode(response.body);
    setState(() {
      myLogs = data.map((tes) => MyLog.fromJSON(tes)).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    _updateData();
  }

  @override
  Widget build(context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Logs'),
      ),
      body: new ListView.builder(
        itemCount: myLogs.length,
        itemBuilder: (BuildContext context, int index) {
          final myLog = myLogs[index];
          return new Column(
            children: <Widget>[
              new ListTile(
                title: new Text(
                  dateFormatter.format(myLog.startAt),
                  style: new TextStyle(fontSize: 32.0),
                ),
                subtitle: new Text(myLog.goal),
                onTap: () {
                  Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => new LogDetailView(myLog: myLog)),
                  );
                },
              ),
              new Divider(height: 0.0),
            ],
          );
        },
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: () {
        },
        elevation: 5.0,
      ),
    );
  }
}