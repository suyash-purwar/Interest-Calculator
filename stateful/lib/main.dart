import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      title: "Statful Widget Example",
      home: FavouriteCity()
    )
  );
}

class FavouriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavouriteCityState();
  }
}

class _FavouriteCityState extends State<FavouriteCity> {
  String name = "";
  List<String> _currencies = ["Rupees", "Dollars", "Pounds", "Others"];
  String _newSelectedCurrency = "Rupees";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful App Example", textAlign: TextAlign.center,)
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String userInput) {
                setState(() {
                  name = userInput;                  
                });
              },
            ),
            DropdownButton<String>(
              items: _currencies.map((String dropdownMenuItem) {
                return DropdownMenuItem(
                  value: dropdownMenuItem,
                  child: Text(dropdownMenuItem)
                );
              }).toList(),
              onChanged: (String newValueSelected) {
                // Your code to execute when user selects any item
                setState(() {
                  this._newSelectedCurrency = newValueSelected;
                });
              },
              value: this._newSelectedCurrency
            ),
            Padding(padding:EdgeInsets.only(top: 50.0), child:Text(
              "Your favourite city is $name",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              )
            )),
            Padding(padding: EdgeInsets.only(top: 5.0), child:Text(
              "Your country's currency is $_newSelectedCurrency",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              )
            ))
          ],
        )
      )
    );
  }
}