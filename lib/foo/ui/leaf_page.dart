import 'package:fluro_localization/common/route/config/application.dart';
import 'package:flutter/material.dart';

class LeafPage extends StatelessWidget {
  final String id;
  LeafPage({this.id}) {
    print('[Debug] LeafPage');
  }

  @override
  Widget build(BuildContext context) {
    print('[Debug] LeafPage.build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaf Page - $id'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Here is leaf page',
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
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
