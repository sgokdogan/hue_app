import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:Text("Product Listing")),
    body: ListView(
    shrinkWrap: true, padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
    children: <Widget> [
    ProductBox(
    name: "iPhone",
    description: "iPhone is the stylist phone ever",
    price: 1000,
    image: 'iphone.jpg',
    ),
    ProductBox(
    name: "Laptop",
    description: "Laptop is most productive development tool",
    price: 2000,
    image: "laptop.jpg"
    ),
    ],
    )
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {super.key,
      required this.name,
      required this.description,
      required this.price,
      required this.image});
  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("images/" + image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}
