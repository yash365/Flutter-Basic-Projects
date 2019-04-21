import 'package:flutter/material.dart';
import 'dart:async';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme:  ThemeData(fontFamily: 'add-font-family-here'), // adding font-family
      debugShowCheckedModeBanner: false,
      home: SignupScreen(),
    );
  }
}

// creating stateful widget class
class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // code for radio buttons
  int _maleValue = 0;
  int _femaleValue = 0;
  int _selected = 0;
  var stateColorMale = Colors.grey[400];
  var stateColorFemale = Colors.grey[400];

  void onChanged(int value) {
    setState(() {
      // changes the value of the radio button when selected
      _selected = value;

      if (value == 0) {
        stateColorMale =
            Colors.black87; // changing color of radio button text when selected
        print(
            "Male radio button value is: $value"); // prints on the terminal or command prompt
      } else {
        stateColorMale = Colors.grey[400]; // default grey color
      }

      if (value == 1) {
        stateColorFemale = Colors.black87;
        print("Female radio button value is: $value");
      } else {
        stateColorFemale = Colors.grey[400];
      }
    });
  }

  List<Widget> makeRadio() {
    List<Widget> list = List<Widget>();

    list.add(Row(
      children: <Widget>[
        // radio button for male
        Text(
          'Male',
          style: TextStyle(fontSize: 22.0, color: stateColorMale),
        ),
        Radio(
          value: 0,
          groupValue: _selected,
          onChanged: (int value) {
            onChanged(value);
          },
        ),

        // radio button for female
        Text(
          'Female',
          style: TextStyle(fontSize: 22.0, color: stateColorFemale),
        ),
        Radio(
          value: 1,
          groupValue: _selected,
          onChanged: (int value) {
            onChanged(value);
          },
        ),

        // radio button for transgender
        //  Text(
        //   'Transgender',
        //   style:  TextStyle(fontSize: 20.0, color: stateColor ),
        // ),
        //  Radio(
        //   value: 2,
        //   groupValue: _selected,
        //   onChanged: (int value) {
        //     onChanged(value);
        //   },
        // ),
      ],
    ));

    return list;
  }

  // code for date picker
  String _dobValue = "";

  // Future keyword is used to were it's value may be needed in future
  Future _selectDOB() async {
    DateTime dobSelected = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime.now());

    if (dobSelected != null) setState(() => _dobValue = dobSelected.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.deepOrange[50],
      body: Container(
        margin: const EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 5.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Cicular Avataar
              CircleAvatar(
                // to add circular image of the user
                backgroundImage: AssetImage("assets/add_profile_image.png"),
                radius: 55.0, // to increas the size of circlar avataar
              ),

              // to change the input text of text field fontsize and tint color of text field to deep orange
              // full name form theme
              Form(
                child: Theme(
                  data: ThemeData(
                    primarySwatch: Colors.deepOrange,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                          color: Colors.grey[400], fontSize: 22.0),
                    )),

                  // Full Name
                  child: Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                    ),
                    // style: TextStyle(
                    //     fontSize: 22.0,
                    //     color: Colors.black87),
                    autocorrect: true,
                    autofocus:
                        false, // set to false .. if it is true it will focus to text field and keyboard will open by default
                    keyboardType:
                        TextInputType.text, //  setting input to text
                  ),
                  ),
                ),
              ),

              // username form theme
              Form(
                child: Theme(
                  data: ThemeData(
                    primarySwatch: Colors.deepOrange,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                          color: Colors.grey[400], fontSize: 22.0),
                    )),

                  // Username
                  child: Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                    ),
                    // style: TextStyle(
                    //     fontSize: 22.0,
                    //     color: Colors.black87),
                    autocorrect: true,
                    autofocus:
                        false, // set to false .. if it is true it will focus to text field and keyboard will open by default
                    keyboardType:
                        TextInputType.text, // setting input to text
                  ),
                  ),
                ),
              ),

              // e-mail form theme
              Form(
                child: Theme(
                  data: ThemeData(
                    primarySwatch: Colors.deepOrange,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                          color: Colors.grey[400], fontSize: 22.0),
                    )),

                  // E-mail
                  child: Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                    ),
                    // style: TextStyle(
                    //     fontSize: 22.0,
                    //     color: Colors.black87),
                    autocorrect: true,
                    autofocus:
                        false, // set to false .. if it is true it will focus to text field and keyboard will open by default
                    keyboardType: TextInputType
                        .emailAddress, // setting input to email address
                  ),
                  ),
                ),
              ),

              // Date of birth form theme
              Form(
                //child:  Theme(
                // data:  ThemeData(
                //     primarySwatch: Colors.deepOrange,
                //     inputDecorationTheme:  InputDecorationTheme(
                //        labelStyle:  TextStyle(
                //            color: Colors.grey[400],
                //            fontSize: 22.0),
                //     )),

                // // Date of birth
                // child:  Expanded(
                //   child:  TextField(
                //     decoration:  InputDecoration(
                //         labelText: 'Date of birth',
                //         ),
                //         style: TextStyle(fontSize: 22.0, color: Colors.black87),
                //     autocorrect: true,
                //     autofocus:
                //         false, // set to false .. if it is true it will focus to text field and keyboard will open by default
                //     keyboardType:
                //         TextInputType.datetime, // setting input to date an
                //   ),
                // ),

                child: Expanded(
                  child: Row(
                  children: <Widget>[
                  //  Expanded(
                  //     flex: 1,
                  //     child:  Text(_dobValue,     // dsiplay the DOB value
                  //         style:  TextStyle(
                  //             color: Colors.grey[400],
                  //             fontSize: 22.0,
                  //             ))),
                  Expanded(
                    flex: 1,
                    child: RaisedButton(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      color: Colors.deepOrange,
                      onPressed: _selectDOB,
                      child: Text(
                        "Select your DOB",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                  ],
                )),
                //),
              ),

              // radio button form theme
              Form(
                child: Theme(
                  data: ThemeData(
                    primarySwatch: Colors.deepOrange,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 22.0,
                      ),
                    )),

                  //radio buttons for male and female
                  child: Expanded(
                  child: Row(
                    children: makeRadio(),
                  ),
                  ),
                ),
              ),

              // password form theme
              Form(
                child: Theme(
                  data: ThemeData(
                    primarySwatch: Colors.deepOrange,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 22.0,
                      ),
                    )),

                  // Password
                  child: Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password",
                    ),
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black87,
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  ),
                ),
              ),

              // sign up button
              Container(
                margin: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                child: RaisedButton(
                  color: Colors.deepOrange,
                  child: Text("Sign Up",
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                  padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                  onPressed: () {
                  print("Sign up button click on signup page");
                  // here it will go next page i.e. will be MapView
                  },
                ),
              ),

              // text for sign in or not
              Text('Already have an account? Sign In',
                  style: TextStyle(fontSize: 17.0, color: Colors.grey[600])),
            ],
          ),
        ),
      ),
    );
  }
}
