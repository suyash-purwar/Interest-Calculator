import "package:flutter/material.dart";

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(
            children: products
              .map(
                (item) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/image.jpg"),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          item,
                          style: TextStyle(
                            fontSize: 15
                          )
                        )
                      )
                    ],
                  ),
                ),
              )
              .toList()
          );
  }
}