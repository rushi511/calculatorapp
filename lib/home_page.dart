import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Center(
            child: Text("Calculator"),
          ),
          backgroundColor: Color.fromARGB(255, 40, 67, 81),
        ),
        body: new Container(
          color: Color.fromARGB(255, 10, 1, 48),
          padding: const EdgeInsets.all(150),
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 0.005),
                ),
                new Text(
                  "Output : $sum",
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                new TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.white),
                  decoration: new InputDecoration(
                      hintText: "Enter Number 1",
                      hintStyle: TextStyle(color: Colors.white)),
                  controller: t1,
                ),
                new TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.white),
                  decoration: new InputDecoration(
                      hintText: "Enter Number 2 ",
                      hintStyle: TextStyle(color: Colors.white)),
                  controller: t2,
                ),
                new Padding(padding: const EdgeInsets.only(top: 20)),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new MaterialButton(
                      child: new Text(
                        "+",
                        style: TextStyle(fontSize: 30),
                      ),
                      color: Colors.lightGreenAccent,
                      onPressed: doAddition,
                    ),
                    new MaterialButton(
                      child: new Text(
                        "-",
                        style: TextStyle(fontSize: 30),
                      ),
                      color: Colors.lightGreenAccent,
                      onPressed: doSub,
                    ),
                  ],
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 20),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new MaterialButton(
                      child: new Text(
                        "*",
                        style: TextStyle(fontSize: 30),
                      ),
                      color: Colors.lightGreenAccent,
                      onPressed: doMul,
                    ),
                    new MaterialButton(
                      child: new Text(
                        "/",
                        style: TextStyle(fontSize: 30),
                      ),
                      color: Colors.lightGreenAccent,
                      onPressed: doDiv,
                    ),
                  ],
                )
              ]),
        ));
  }
}
