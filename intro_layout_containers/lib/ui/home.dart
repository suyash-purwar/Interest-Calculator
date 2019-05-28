import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 25),
            alignment: Alignment.topCenter,
            child: Image.asset('assets\\images\\flutter.png')
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            alignment: Alignment.topLeft,
            child: Text(
            "Introducing Flutter",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w400,
              fontSize: 25,
              color: Colors.black,
              decoration: TextDecoration.none,
              decorationColor: Colors.black
            ), )
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            alignment: Alignment.topLeft,
            child: Text(
              "by Suyash Purwar",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
                fontWeight: FontWeight.w100,
                decoration: TextDecoration.none,
                height: 0.7,
              )
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 10),
            alignment: Alignment.topLeft,
            child: Text(
              "Lorem ipsum dolor sit amet consectetur, adipisicing " +
              "elit. Harum laboriosam adipisci quo ea esse sequi " +
              "aliquam quis modi? Dolore natus neque nesciunt " + 
              "necessitatibus suscipit ratione consequatur, nobis quo "+
              "earum incidunt quia in iure fuga! Ea aut veritatis non " +
              "dolore praesentium.",
              style: TextStyle(
                fontSize: 15,
                decoration: TextDecoration.none,
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontFamily: 'Raleway'
              )
            ),
          )
        ]
      )
    );
  }
}