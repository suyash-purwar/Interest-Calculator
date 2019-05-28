import 'package:flutter/material.dart';

import 'ImageAsset.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 50),

          Row(
            children: <Widget>[
              Expanded(child: ImageAsset('assets\\img\\1.jpg'),),
              Expanded(child: ImageAsset('assets\\img\\2.jpg'),),
            ]
          ),

          Row(
            children: <Widget>[
              Expanded(child: ImageAsset('assets\\img\\6.jpg'),),
              Expanded(child: ImageAsset('assets\\img\\4.jpg'),),
            ]
          ),

          Row(
            children: <Widget>[
              Expanded(child: ImageAsset('assets\\img\\5.jpg'),),
              Expanded(child: ImageAsset('assets\\img\\6.jpg'),),
            ]
          ),
        ]
      )
    );
  }
}