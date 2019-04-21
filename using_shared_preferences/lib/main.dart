import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(
    MaterialApp(
      home: SavingValue(),
    )
  );
}

class SavingValue extends StatefulWidget{

  @override
  _SavingValueState createState() => _SavingValueState();
}

class _SavingValueState extends State<SavingValue>{
  int _counter = 0;
  String _stringValue;
    List _stringList = [
      "Image 1",
      "Image 2",
      "image 3",
      "Image 4",
      "Image 5",
      "image 6",
      "Image 7",
      "Image 8",
      "image 9"
      "Image 10",
      "Image 11",
      "image 12"
    ];


  @override
    void initState() {
      super.initState();
      _loadCounter();
    }

  // loading counter on start
  _loadCounter() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
        _stringValue = prefs.getString("string_value"); // saving string-value
        _counter = (prefs.getInt("counter") ?? 0);   // saving int-value

      });
  }

  // incrementing counter after click
  _incrementCounter() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
        _counter = (prefs.getInt("counter") ?? 0) + 1;
        _stringValue = prefs.getString("string_value");
        prefs.setInt("counter",_counter);
        prefs.setString("string_value", "String values");
      });
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences",
        ),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text("You pushed the buttons this many times:"),

            Text("$_counter",
              style: Theme.of(context).textTheme.display1,
            ),

            Padding(
              padding: const EdgeInsets.all(30.0),
            ),

            Text(_stringValue,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0
              ),
            )


          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "Increment",
        child: Icon(Icons.add)
      ),

    );
  }

  

  
}
