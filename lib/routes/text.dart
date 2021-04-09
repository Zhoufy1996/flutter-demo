import 'package:flutter/material.dart';

class TextRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("文本及样式")),
      body: Center(
        child: Column(
          children: [
            Text(
              "Hello World",
            ),
            Text(
              "Hello World, I am Feiyu Zhou" * 4,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Hello World",
              textScaleFactor: 1.5,
            ),
            Text(
              "Hello World",
              style: TextStyle(
                color: Colors.blue,
                backgroundColor: Colors.yellow,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dotted,
                fontFamily: "Courier",
              ),
              textScaleFactor: 1.5,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(text: "Home:"),
              TextSpan(
                  text: "https://flutterchina.club",
                  style: TextStyle(color: Colors.blue))
            ])),
            DefaultTextStyle(
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.left,
                child: Column(
                  children: [
                    Text("hello world"),
                    Text(
                      "Hello world",
                      style: TextStyle(
                        inherit: false,
                        color: Colors.cyan,
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
