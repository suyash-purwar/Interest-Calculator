import "package:flutter/material.dart";

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext build) {
    return MaterialApp(
      title: "Flipkart",
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
        accentColor: Colors.blueGrey
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text = "Hello World";

  void _changeText() {
    setState(() {   
      if (text.startsWith("H")) {
        text = "Welcome To My App";
      } else {
        text = "Hello World";
      }
    });
  }

  Widget _bodyWidget() {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22,
              )
            ),
          ],
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flipkart"),
        leading: Icon(Icons.menu),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person, color: Colors.white),
            tooltip: 'Profile'
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            tooltip: 'Search'
          ),
        ],
      ),
      body: _bodyWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeText,
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}