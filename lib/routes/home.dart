import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home")),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: Text("navigate new route"),
              onPressed: () => {
                Navigator.pushNamed(context, "new_route",
                    arguments: "new route")
              },
            ),
            TextButton(
              child: Text("permission"),
              onPressed: () => {
                Navigator.pushNamed(context, "permission",
                    arguments: "permission")
              },
            ),
            TextButton(
              child: Text("counter"),
              onPressed: () => {Navigator.pushNamed(context, "counter")},
            ),
            TextButton(
              child: Text("text"),
              onPressed: () => {Navigator.pushNamed(context, "text")},
            ),
            TextButton(
              child: Text("button"),
              onPressed: () => {Navigator.pushNamed(context, "button")},
            ),
          ],
        ),
      ),
    );
  }
}
