import 'package:flutter/material.dart';

void main() => runApp(ButtonChange());

class ButtonChange extends StatefulWidget {
  @override
  _ButtonChangeState createState() => _ButtonChangeState();
}

class _ButtonChangeState extends State<ButtonChange> {
  bool _isFollowBtnClicked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: IconButton(
              alignment: Alignment.topRight,
              iconSize: 30.0,
              splashColor: Colors.grey[600],
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              onPressed: () {
                setState(() {
                  _isFollowBtnClicked = true;
                });
              },
              icon: (_isFollowBtnClicked == true)
                  ? Image.asset("assets/following.png")
                  : Image.asset("assets/follow.png")),
        ),
      ),
    );
  }

  // Widget followBtnToFollowingBtn(bool value){
  //   Widget btn;

  //   btn = (value == true) ? Image.asset("assets/follow.png")
  //                       : Image.asset("assets/following.png");
  //   return btn;
  //   }
}
