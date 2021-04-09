import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  NewRoute({
    Key key,
    @required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("new route"),
      ),
      body: Center(
          child: Column(
        children: [Text(text), ContextWidget()],
      )),
    );
  }
}

class ContextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = context.findAncestorWidgetOfExactType<Scaffold>();
    Widget title = (scaffold.appBar as AppBar).title;
    return title;
  }
}
