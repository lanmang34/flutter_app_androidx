import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipRoute extends StatelessWidget {

  TipRoute({this.content});

  final String content;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('tip route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('value = $content'),
            RaisedButton(
              onPressed: () => Navigator.pop(context, '我是返回值'),
              child: Text('back'),
            )
          ],
        ),
      ),
    );
  }

}