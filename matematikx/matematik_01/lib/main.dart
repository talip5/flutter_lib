import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  TextEditingController sayi1 = TextEditingController();
  TextEditingController sayi2 = TextEditingController();
  int _counter = 0;
  int counter = 0;
  double sonuc = 0;
  Timer _incrementCounterTimer;
  double sonuc_fixed;

  void hesapla() {
    setState(() {
      sonuc = double.parse(sayi1.text) /
          (double.parse(sayi2.text) * double.parse(sayi2.text));
      sonuc_fixed = double.parse((sonuc).toStringAsFixed(2));
      print(sonuc_fixed);
    });
  }

  _incrementCounterx() {
    _incrementCounterTimer = Timer.periodic(Duration(seconds: 4), (timer) {
      counter++;
      print(counter);
      if (counter == 5) // <-- Change this to your preferred value of N
        _incrementCounterTimer.cancel();

      setState(() {});
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  color: Colors.teal,
                  width: 100,
                  height: 100,
                  child: TextField(
                    decoration: (InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      /*
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,width: 5),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red,width: 5),
                      ),
                      border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple,width: 5),
                      ),

                       */
                    )),
                    focusNode: myFocusNode,
                    style: TextStyle(fontSize: 20.0),
                    keyboardType: TextInputType.number,
                    //autofocus: true,
                    textAlign: TextAlign.center,
                    controller: sayi1,
                  ),
                ),
                Container(
                  width: 50,
                  height: 100,
                ),
                Container(
                  color: Colors.amberAccent,
                  width: 100,
                  height: 150,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.orangeAccent,filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red,width: 5),
                        borderRadius: BorderRadius.circular(20),
                        ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,width: 5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    style: TextStyle(fontSize: 25.0),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    controller: sayi2,
                  ),
                ),
              ],
            ),
            RaisedButton(
              child: Text(
                "Hesapla",
                style: TextStyle(fontSize: 20.0),
              ),
              color: Colors.cyan,
              onPressed: () {
                counter = 0;
                _incrementCounterx();
                if (sayi1.text == "" || sayi2.text == "") {
                  print("sonuc");
                  sayi1.clear();
                  sayi2.clear();
                } else {
                  hesapla();
                  sayi1.clear();
                  sayi2.clear();
                }
                myFocusNode.requestFocus();
              },
            ),
            Text(
              "Sonuc :$sonuc_fixed",
              style: TextStyle(fontSize: 25.0),
            ),
            RaisedButton(
              child: Text("Timer"),
              color: Colors.greenAccent,
              onPressed: () {
                counter = 0;
                _incrementCounterx();
              },
            ),
          ],
        ),
      ),
    );
  }
}
