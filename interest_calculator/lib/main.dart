import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Interest Calculator App",
      home: SIForm(),
      theme: ThemeData(
        primaryColor: Colors.indigo,
        accentColor: Colors.indigoAccent,
        brightness: Brightness.dark
      )
    )
  );
}

class SIForm extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _SIForm();
  }
}

class _SIForm extends State<SIForm> {
  List<String> _currencies = ["Rupees", "Dollars", "Pounds", "Others"];
  final double _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;

    return Scaffold(
      appBar: AppBar(
        title: Text("Interest Calculator App"),
        elevation: 7.0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(_minimumPadding * 2),
            child: Column(
              children: <Widget>[
                Center(child:getImageAsste()),

                Padding(
                  padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
                  child: TextField(
                    style: textStyle,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Principal",
                      labelStyle: textStyle,
                      hintText: "Enter Principal e.g. 12000",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )
                    )
                  )
                ),

                Padding(
                  padding: EdgeInsets.only(
                    top: _minimumPadding,
                    bottom: _minimumPadding
                  ),
                  child: TextField(
                    style: textStyle,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Rate of Interest",
                      labelStyle: textStyle,
                      hintText: "In Percent",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )
                    )
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(
                    top: _minimumPadding,
                    bottom: _minimumPadding
                  ),
                  child: Row(
                  children: <Widget>[
                    Expanded(child: TextField(
                      style: textStyle,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Term",
                        labelStyle: textStyle,
                        hintText: "Time in years",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )
                      )
                    )),

                    SizedBox(width: _minimumPadding * 5),

                    Expanded(child: DropdownButton<String>(
                      style: textStyle,
                      items: _currencies.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),

                      value: 'Rupees',

                      onChanged: (String newSelectedValue) {
                      },
                    )),
                  ],
                )),

                Padding(
                  padding: EdgeInsets.only(
                    top: _minimumPadding,
                    bottom: _minimumPadding
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).primaryColor,
                          textColor: Theme.of(context).primaryColorDark,
                          child: Text("Calculate", textScaleFactor: 1.5),
                          onPressed: () {

                          },
                        )
                      ),

                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).primaryColorDark,

                          child: Text("Reset", textScaleFactor: 1.5),
                          onPressed: () {

                          },
                        )
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(_minimumPadding * 2),
                  child: Text("Todo text", style: textStyle)
                )
              ],
            ),
          ),
        ]
      ),
    );
  }

  Widget getImageAsste() {
    AssetImage assetImg = AssetImage("image/money.png");
    Image image = Image(image: assetImg, width: 125, height: 125);

    return Container(child: image, margin: EdgeInsets.all(_minimumPadding * 10));
  }
}