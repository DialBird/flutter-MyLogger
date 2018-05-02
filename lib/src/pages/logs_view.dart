part of mylogger;

class LogsView extends StatelessWidget {
  @override
  Widget build(context) {
    return new CupertinoPageScaffold(
      navigationBar: new CupertinoNavigationBar(
        middle: new Text('Logs'),
      ),
      child: new Center(
        child: new CupertinoButton(
          child: const Text('Next page'),
          onPressed: () {
            Navigator.of(context).push(
              new CupertinoPageRoute<Null>(
                builder: (context) {
                  return new CupertinoPageScaffold(
                    navigationBar: new CupertinoNavigationBar(
                      middle: new Text('Page 2 of tab first'),
                    ),
                    child: new Center(
                      child: new CupertinoButton(
                        child: const Text('Back'),
                        onPressed: () { Navigator.of(context).pop(); },
                      ),
                    ),
                  );
                },
              )
            );
          },
        ),
      ),
    );
  }
}