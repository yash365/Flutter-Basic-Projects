import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyApp());
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    DateTime _dateofbirth;

    return Scaffold(
      body: Form(
        key: formKey,
        child: Stack(children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // DateTimePickerFormField(
              //   dateOnly: true,
              //   format: DateFormat("dd-MMM-yyyy"),
              //   //initialDate: DateTime(1930, 1, 1),
              //   //firstDate: DateTime.now(),
              //   //lastDate: DateTime(2000, 1, 1),
              //   validator: (val) =>
              //       val == null ? 'Please select date of birth.' : null,
              //   decoration: InputDecoration(labelText: 'Birthday'),
              //   onChanged: (dt) => setState(() {
              //         _dateofbirth = dt;
              //       }),
              // ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Hello"),
              Padding(
                padding: EdgeInsets.all(20.0),
              ),
              Positioned(
                right: 5.0,
                child: Text("There")),
            ],
          )
        ]),
      ),
    );
  }
}
