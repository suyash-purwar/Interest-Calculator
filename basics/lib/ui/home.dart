import "package:flutter/Material.dart";

class Welcome extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.red,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Hello World", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.teal,

        ),
        body: Center(
          child: Text(
            "Hello World",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.black,
              letterSpacing: 4,
              fontFamily: "Raleway",
              fontSize: 50,
              decoration: TextDecoration.none
            )
          )
        )
      )
    );
  }
}