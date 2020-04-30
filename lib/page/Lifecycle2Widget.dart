import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lifecycle2Widget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Lifecycle2WidgetState();
  }

}

class _Lifecycle2WidgetState extends State<Lifecycle2Widget> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('lifecycle 2    initState');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('lifecycle 2    build');
    return Scaffold(
      appBar: AppBar(
        title: Text("生命周期测试"),
      ),
      body: Center(
        child: Text('lifecycle 2')
      ),
    );
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('lifecycle 2    didChangeDependencies');
  }

  @override
  void didUpdateWidget(Lifecycle2Widget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('lifecycle 2    didUpdateWidget');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('lifecycle 2    deactivate');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('lifecycle 2    dispose');
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    print('lifecycle 2    reassemble');
  }

}