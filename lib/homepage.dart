// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
  double n1=0, n2=0, result=0;
  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");
  void Add(){
    setState(() {
      n1 = double.parse(t1.text);
      n2 = double.parse(t2.text);
      result = n1+n2;
    });
  }
  void Subtract(){
    setState(() {
      n1 = double.parse(t1.text);
      n2 = double.parse(t2.text);
      result = n1-n2;
    });
  }
  void Multiply(){
    setState(() {
      n1 = double.parse(t1.text);
      n2 = double.parse(t2.text);
      result = n1*n2;
    });
  }
  void Divide(){
    setState(() {
      n1 = double.parse(t1.text);
      n2 = double.parse(t2.text);
      result = n1/n2;
    });
  }
  void Clear(){
    setState(() {
      t1.text = "";
      t2.text = "";
    });
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      backgroundColor: Colors.blueGrey[100],
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Output: $result",
              style: new TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter number 1"),
              style: TextStyle(color: Colors.red),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter number 2"),
              style: TextStyle(color: Colors.red),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new ElevatedButton(
                  child: new Text("+"),
                  onPressed: Add,
                ),
                new ElevatedButton(
                  child: new Text("-"),
                  onPressed: Subtract,
                ),
                new ElevatedButton(
                  child: new Text("*"),
                  onPressed: Multiply,
                ),
                new ElevatedButton(
                  child: new Text("/"),
                  onPressed: Divide,
                ),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new ElevatedButton(
                  child: new Text("Clear"),
                  onPressed: Clear,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}