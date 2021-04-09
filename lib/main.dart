import 'package:demo/routes/button.dart';
import 'package:demo/routes/counter.dart';
import 'package:demo/routes/home.dart';
import 'package:demo/routes/img.dart';
import 'package:demo/routes/newRoute.dart';
import 'package:demo/routes/text.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      routes: {
        "new_route": (context) => NewRoute(
              text: ModalRoute.of(context).settings.arguments,
            ),
        "counter": (context) => CounterWidget(),
        "text": (context) => TextRoute(),
        "button": (context) => ButtonRoute(),
        "img": (context) => ImgRoute(),
        "/": (context) => Home(),
      },
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          String routeName = settings.name;
          if (routeName == "permission") {
            return NewRoute(text: settings.arguments);
          }
          return Home();
        });
      },
    );
  }
}
