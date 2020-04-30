import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappandroidx/page/Lifecycle2Widget.dart';

class CounterWidget extends StatefulWidget {

  final int initCount;

  const CounterWidget({Key key, this.initCount}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CounterWidgetState();
  }

}

class _CounterWidgetState extends State<CounterWidget> {

  var count;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    count = widget.initCount;
    print('lifecycle 1    initState');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('lifecycle 1    build');
    return Scaffold(
      appBar: AppBar(
        title: Text("生命周期测试"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('value = $count'),
                onPressed: () {
                  setState(() {
                    ++count;
                  });
                },
              ),
              FlatButton(
                child: Text('start lifecycle2 route'),
                onPressed: () {
                  print('start lifecycle2 route');
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Lifecycle2Widget()
                  ));
                },
              )
            ],
          )
      )
    );
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('lifecycle 1    didChangeDependencies');
  }

  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('lifecycle 1    didUpdateWidget');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('lifecycle 1    deactivate');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('lifecycle 1    dispose');
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    print('lifecycle 1    reassemble');
  }

}