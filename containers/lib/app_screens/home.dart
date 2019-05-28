import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("I",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      fontFamily: 'Raleway',
                      decoration: TextDecoration.none,
                      fontSize: 160)),

                SizedBox(width: 50,),

                Icon(Icons.favorite, color: Colors.pink, size: 150),
              ],
            ),

            Text("Flutter",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Raleway',
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: 105,
                      
                    ))
          ],
        )

        // Row(
        //   children: <Widget>[
        //     Expanded(child:Text(
        //       "Flutter",
        //       textDirection: TextDirection.ltr,
        //       textAlign: TextAlign.center,
        //       style: TextStyle(
        //         fontWeight: FontWeight.w400,
        //         color: Colors.white,
        //         fontFamily: 'Raleway',
        //         decoration: TextDecoration.none,
        //         fontSize: 65
        //       )
        //     )),
        //     Expanded(child:Text(
        //       "I love you my boy",
        //       textDirection: TextDirection.ltr,
        //       textAlign: TextAlign.center,
        //       style: TextStyle(
        //         fontWeight: FontWeight.w200,
        //         fontFamily: 'Raleway',
        //         decoration: TextDecoration.none,
        //         color: Colors.pink,
        //         fontSize: 40,
        //       )
        //     ))
        //   ]
        // )
        );
  }
}
