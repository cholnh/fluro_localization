import 'dart:math';

import 'package:fluro_localization/common/route/config/application.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  _HomePageState() {
    print('[Debug] _HomePageState');
  }

  @override
  Widget build(BuildContext context) {
    print('[Debug] _HomePageState.build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Here is home page',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Divider(),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Demo page', style: TextStyle(fontSize: 24)),
                  onPressed: () => Application.router.navigateTo(context, '/demo/'+_counter.toString()),
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
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
