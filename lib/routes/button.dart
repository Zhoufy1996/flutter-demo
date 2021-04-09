import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("button"),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => {print("按钮")},
              child: Text("按钮"),
            ),
            IconButton(
              icon: Icon(Icons.thumb_down),
              onPressed: () => print("icon"),
            ),
            ElevatedButton.icon(
              onPressed: () => {},
              label: Text("icon"),
              icon: Icon(Icons.thumb_down),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {print("float")},
        child: Text(
          "+",
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}
