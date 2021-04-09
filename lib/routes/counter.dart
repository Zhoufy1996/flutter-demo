import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  CounterWidget({Key key, this.initValue = 0}) : super(key: key);

  final int initValue;

  @override
  _CountWidgetState createState() => new _CountWidgetState();
}

class _CountWidgetState extends State<CounterWidget> {
  int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("counter demo")),
        body: Container(
            child: TextButton(
          child: Text('$_counter'),
          onPressed: () => {setState(() => _counter += 1)},
        )));
  }
}
