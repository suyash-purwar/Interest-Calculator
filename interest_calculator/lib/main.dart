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
  String _currentItemSelected = "Rupees";
  String displayResult = "";

  TextEditingController principalController = TextEditingController();
  TextEditingController roiController = TextEditingController();
  TextEditingController termController = TextEditingController();

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
                    controller: principalController,
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
                    controller: roiController,
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
                      controller: termController,
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

                      value: _currentItemSelected,

                      onChanged: (String newSelectedValue) {
                        setState(() {
                          _currentItemSelected = newSelectedValue;
                        });
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
                            setState(() {
                              displayResult = _calculateTotalReturns();
                            });
                          },
                        )
                      ),

                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).primaryColorDark,

                          child: Text("Reset", textScaleFactor: 1.5),
                          onPressed: () {
                            setState(() {
                              _clearInputFields();
                            });
                          },
                        )
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(_minimumPadding * 2),
                  child: Text(displayResult, style: textStyle)
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

  String _calculateTotalReturns() {
    double principal = double.parse(principalController.text);
    double roi = double.parse(roiController.text);
    double term = double.parse(termController.text);

    double totalAmountPayable = principal + (principal * roi * term) / 100;

    String reponse = "After ${term.round()} years, your investment will be worth of $totalAmountPayable $_currentItemSelected";
    return reponse;
  }

  void _clearInputFields() {
    principalController.clear();
    roiController.clear();
    termController.clear();
    _currentItemSelected = _currencies[0];
    displayResult = "";
  }
}