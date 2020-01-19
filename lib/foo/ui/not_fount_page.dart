import 'package:fluro_localization/common/route/config/application.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {

  NotFoundPage(){
    print('[Debug] NotFoundPage');
  }

  @override
  Widget build(BuildContext context) {
    print('[Debug] NotFoundPage.build');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '404 NOT FOUND',
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('되돌아가기', style: TextStyle(fontSize: 24)),
                  onPressed: () => Navigator.pop(context),
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                ),
                FlatButton(
                  child: Text('홈으로', style: TextStyle(fontSize: 24)),
                  onPressed: () => Application.router.navigateTo(context, '/', clearStack: true),
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
