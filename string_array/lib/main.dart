import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> array = <String>[];
  final List<String> array2 = <String>[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                debugPrint("array value: ${array.length}");
                debugPrint("array2 value: ${array2.length}");
              },
              child: Text("Click here"),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
            ),
            Text(
                "array value: ${array.length.toString()}\n\n array2 value: ${array2.length.toString()}")
          ],
        ),
      ),
    ));
  }
}
