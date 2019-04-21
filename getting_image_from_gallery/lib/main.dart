import 'dart:io';

import 'package:flutter/material.dart';
import 'package:getting_image_from_gallery/home_screen.dart';
import "package:image_picker/image_picker.dart";

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Image Picker",
      theme: ThemeData(
        primaryColor: const Color(0xFF02BB9F),
        primaryColorDark: const Color(0xFF167F67),
        accentColor: const Color(0xFF167F67)
      ),
      home: UserImage(),
    )
  );
}

class UserImage extends StatefulWidget {
  _UserImageState createState() => _UserImageState();
}

class _UserImageState extends State<UserImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
    );
  }
}


// use camera method

// class UserImage extends StatefulWidget {
//   _UserImageState createState() => _UserImageState();
// }

// class _UserImageState extends State<UserImage> {
//   File _image;

//   Future getImage() async {
//     var image = await ImagePicker.pickImage(source: ImageSource.camera);

//     setState(() {
//           _image = image;
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _image == null
//           ? Text("No image selected.")
//           :Image.file(_image),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: getImage,
//         tooltip: "Pick Image",
//         child: Icon(Icons.add_a_photo),
//       ),
//     );
//   }
// }




