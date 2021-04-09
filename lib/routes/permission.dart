import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PermissionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("permission")),
      body: Center(
        child: TextButton(
          child: Text("back"),
          onPressed: () => {
            Navigator.pushNamed(context, "/")
          },
        ),
      ),
    );
  }
}
