import 'package:flutter/material.dart';

void main() => runApp(CircularIndicatr());

class CircularIndicatr extends StatefulWidget {
  @override
  _CircularIndicatrState createState() => _CircularIndicatrState();
}

class _CircularIndicatrState extends State<CircularIndicatr> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text("Click Me"),
          onPressed: () {
            setState(() {
              _isClicked = true;
            });
          },
        ),

        // circular indicator
        Center(
            child: _isClicked
                ? CircularProgressIndicator()
                : Container())
      ],
    )));
  }
}
