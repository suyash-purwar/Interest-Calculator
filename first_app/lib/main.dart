import "package:flutter/material.dart";

import 'package:first_app/product_manager.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList')
        ),
        body: ProductManager()
      ),
    );
  }
}