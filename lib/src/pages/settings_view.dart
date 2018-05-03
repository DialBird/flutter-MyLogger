part of mylogger;

class SettingsView extends StatelessWidget {
  _onLogoutTapped(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('Log out'),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                new Text('Are you sure to log out?'),
              ],
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child: new Text('OK', style: TextStyle(color: Colors.red)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(context) {
    return new Scaffold(
      body: new ListView(
        padding: new EdgeInsets.all(0.0),
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(36.0),
            color: Theme.of(context).primaryColor,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Dialbird',
                    style: new TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold)
                  ),
                ),
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new CircleAvatar(
                    backgroundImage: new AssetImage(
                      'images/dialbird.jpg',
                    ),
                  ),
                ),
                new Text('example@com', style: new TextStyle(color: Colors.white, fontSize: 12.0)),
              ],
            ),
          ),
          new Container(
            color: Colors.black12,
            padding: new EdgeInsets.all(10.0),
            child: new Text('Account'),
          ),
          new ListTile(
            leading: Icon(Icons.person),
            trailing: Icon(Icons.chevron_right),
            title: const Text('Detail'),
            onTap: () {
              print('object');
            },
          ),
          new Divider(height: 0.0, indent: 60.0),
          new ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Log out', style: TextStyle(color: Colors.red)),
            trailing: Icon(Icons.chevron_right, color: Colors.red),
            onTap: () => _onLogoutTapped(context),
          ),
          new Container(
            color: Colors.black12,
            padding: new EdgeInsets.all(10.0),
            child: new Text('Team'),
          ),
          new ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blue, child: new Text('T')),
            title: Text('Tarou'),
          ),
          new Divider(height: 0.0),
          new ListTile(
            leading: CircleAvatar(backgroundColor: Colors.pink, child: new Text('H')),
            title: Text('Hanako'),
          ),
          new Divider(height: 0.0),
          new ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blue, child: new Text('T')),
            title: Text('Tarou'),
          ),
          new Divider(height: 0.0),
          new ListTile(
            leading: CircleAvatar(backgroundColor: Colors.pink, child: new Text('H')),
            title: Text('Hanako'),
          ),
          new Divider(height: 0.0),
          new ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blue, child: new Text('T')),
            title: Text('Tarou'),
          ),
          new Divider(height: 0.0),
          new ListTile(
            leading: CircleAvatar(backgroundColor: Colors.pink, child: new Text('H')),
            title: Text('Hanako'),
          ),
          new Divider(height: 0.0),
          new ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blue, child: new Text('T')),
            title: Text('Tarou'),
          ),
          new Divider(height: 0.0),
          new ListTile(
            leading: CircleAvatar(backgroundColor: Colors.pink, child: new Text('H')),
            title: Text('Hanako'),
          ),
          new Divider(height: 0.0),
        ],
      ),
    );
  }
}