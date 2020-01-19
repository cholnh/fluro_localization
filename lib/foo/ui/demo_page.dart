import 'package:fluro_localization/common/route/config/application.dart';
import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  final String id;
  DemoPage({Key key, this.id}) : super(key: key);

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {

  _DemoPageState() {
    print('[Debug] _DemoPageState');
  }

  @override
  Widget build(BuildContext context) {
    print('[Debug] _DemoPageState.build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Page - ${widget.id}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Here is demo page',
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Leaf Page', style: TextStyle(fontSize: 24)),
                  onPressed: () => Application.router.navigateTo(context, '/leaf/' + widget.id),
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                ),
                FlatButton(
                  child: Text('NotFound', style: TextStyle(fontSize: 24)),
                  onPressed: () => Application.router.navigateTo(context, '/foopath123123'),
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}