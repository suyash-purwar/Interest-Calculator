import 'package:flutter/material.dart';

import 'ui/layout.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Image Gallery",
      home: Layout(),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryColor: Colors.teal,
        brightness: Brightness.light,
      )
    );
  }
}