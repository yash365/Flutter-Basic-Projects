import 'dart:io';

import "package:flutter/material.dart";
import 'package:getting_image_from_gallery/image_picker_handler.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin, ImagePickerListener {
  
  File _image;
  AnimationController _controller;
  ImagePickerHandler imagePicker;

  @override
    void initState() {
      super.initState();
      _controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 500)
      );

      imagePicker=new ImagePickerHandler(this,_controller);
      imagePicker.init();

    }

  @override
    void dispose() {
      // TODO: implement dispose
      _controller.dispose();
      super.dispose();
    }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => imagePicker.showDialog(context),
        child: Center(
          child: _image ==null
            ? Stack(
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    radius: 80.0,
                    backgroundColor: Colors.deepOrange
                  ),
                ),
                Center(
                  child: Image.asset("assets/add_profile_image.png"),
                ),

              ],
            ): Container(
              height: 160.0,
              width: 160.0,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                image: DecorationImage(
                  image: ExactAssetImage(_image.path),
                  fit: BoxFit.cover
                ),
                border:
                  Border.all(color: Colors.green, width:5.0),
                borderRadius: 
                  BorderRadius.all(const Radius.circular(80.0)),
              ),
            )
        ),
      ),
    );
  }

  @override
  userImage(File _image){
    setState((){
      this._image = _image;
    });
  }
}