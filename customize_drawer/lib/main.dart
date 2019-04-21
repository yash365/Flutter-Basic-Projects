import 'package:customize_drawer/next_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  final Widget child;

  MainPage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyApp(), routes: <String, WidgetBuilder>{
      '/nextpage': (BuildContext context) => NextPage(),
    });
  }
}

class MyApp extends StatefulWidget {
  final Widget child;

  MyApp({Key key, this.child}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void nextPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => NextPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text("AppBar"),
            ),
            ListTile(
              title: Text("Sign out"),
              onTap: () {
                //nextPage();
                Navigator.of(context).pushNamed('/nextpage');
              },
            )
          ],
        ),
      ),
      body: AppBar(
        leading: IconButton(
          icon: Icon(Icons.settings), // setting button icon
          alignment: Alignment.topLeft,
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
      ),
    );
  }
}
