import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final Widget child;

  NextPage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
        child: Text("Welcome to Next-Page"),
      ),
    );
  }
}