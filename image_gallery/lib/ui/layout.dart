import "package:flutter/material.dart";

import "body.dart";

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.apps)
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert)
          )
        ],
        title: Text("Image Gallery")
      ),
      body: Body()
    );
  }
} 