import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Center(
          child: Container(
            child: Text(
              "Next Page",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.yellowAccent
              ),
            ),
          ),
          ),
      )
    );
  }
}