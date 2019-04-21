import "package:flutter/material.dart";

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Two"),
        centerTitle: true,
      ),

      body: Center(
        child: Text("Page-Two"),
      ),
    );
  }
}