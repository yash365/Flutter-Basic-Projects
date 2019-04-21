import 'package:flutter/material.dart';
import 'package:search_bar_inside_flutter/next_page.dart';

void  main() {
  runApp(
    MaterialApp(
      home: SearchBar()
    )
    );
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title : Text('Search App'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
               showSearch(
                 context: context,
                 delegate: DataSearch()
               );
            },
          )
        ],
      ),
    );
  }
}


class DataSearch extends SearchDelegate<String>{

  final cities = [
    "Mumbai",
    "Hyderabad",
    "New Delhi",
    "Kolkata",
    "Jaipur",
    "Nagpur",
    "Pune",
    "Chennai",
    "Indore"
  ];

  final recentCities = [
    "New Delhi",
    "Kolkata",
    "Jaipur"
  ];


  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(
      icon: Icon(Icons.clear),
      onPressed: () {
        query = "";
      },
    ) ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        child: Card(
          color: Colors.red,
          child: Center(
            child: Text(query),
          ),
        ),
      ),
    );

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = 
        query.isEmpty ? 
        recentCities 
        : cities.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          //showResults(context);
          gotoNextPage(context);
        },
        leading: Icon(Icons.location_city),
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0, query.length),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            children: [
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(
                  color: Colors.grey
                )
              )  
            ]
          ),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }

}

// next-page
void gotoNextPage(BuildContext context){
    print("Clicking signin button inside gotoNextPage()");      // going to next-page

    var route = new MaterialPageRoute(
      builder: (BuildContext context) => NextPage()
    );

    Navigator.of(context).push(route);
}

