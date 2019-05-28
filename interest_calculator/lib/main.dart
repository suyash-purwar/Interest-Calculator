import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      title: "Simple Interest Calculator App",
      home: SIForm()
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

  @override
  Widget build(BuildContext context) {
    return null;
  }
}