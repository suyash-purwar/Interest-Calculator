import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Buttons",
        home: Scaffold(
          appBar: AppBar(title: Text("Buttons")),
          body: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: Container(
                      height: 50,
                      width: 250,
                      child: RaisedButton(
                        onPressed: () {
                          dropFiles(context);
                        },
                        color: Colors.deepOrange,
                        child: Text(
                          "Drop Files",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        elevation: 5.0,
                      )))
            ],
          )),
        ));
  }

  void dropFiles(BuildContext context) {
    var dialogBox = AlertDialog(
        title: Text("Files dropped successfully"),
        content:
            Text("Your files has been selected for saving on Google Files"));

    showDialog(context: context, builder: (BuildContext context) => dialogBox);
  }
}
