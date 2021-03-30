import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  TextEditingController sembol1 = TextEditingController(text: "X");
  TextEditingController sembol2 = TextEditingController(text: "=");
  TextEditingController sonuc_yeni = TextEditingController();

  int _counter = 0;
  int counter = 0;
  double sonuc = 0;
  Timer _incrementCounterTimer;
  double sonuc_fixed;
  String degis = "aBc";
  bool degis_durum = true;

  void hesapla() {
    setState(() {
      sonuc = double.parse(sayi1.text) * double.parse(sayi2.text);
      sonuc_fixed = double.parse((sonuc).toStringAsFixed(0));
      sonuc_yeni.text = sonuc_fixed.toString();
      print(sonuc_yeni.text);
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 80,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.orangeAccent,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    focusNode: myFocusNode,
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                    //keyboardType: TextInputType.number,
                    autofocus: true,
                    textAlign: TextAlign.center,
                    controller: sayi1,
                    onChanged: (String value) async {
                      if (value == "a") {
                        print("hello");
                        await showDialog<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Thats correct!'),
                              content: Text('13 is the right answer.'),
                              actions: <Widget>[
                                FlatButton(
                                  onPressed: () {
                                    print("tamam");
                                    Navigator.pop(context);
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                  ),
                ),
                Container(
                  width: 40,
                  height: 60,
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    style: TextStyle(fontSize: 25.0),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    controller: sembol1,
                  ),
                ),
                Container(
                  width: 80,
                  height: 60,
                  child: TextField(
                    maxLength: 6,
                    inputFormatters: [
                      UpperCaseTextFormatter(),
                      //WhitelistingTextInputFormatter(r"[A-Z0-9]+")
                    ],
                    decoration: InputDecoration(
                      fillColor: Colors.orangeAccent,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    controller: sayi2,
                  ),
                ),
                Container(
                  width: 40,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    controller: sembol2,
                  ),
                ),
                Container(
                  width: 80,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.green,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    controller: sonuc_yeni,
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
                setState(() {
                  if (degis_durum) {
                    degis = degis.toUpperCase();
                    degis_durum = false;
                  } else {
                    degis = degis.toLowerCase();
                    degis_durum = true;
                  }
                });
                counter = 0;
                _incrementCounterx();
              },
            ),
            Text(
              degis,
              style: TextStyle(fontSize: 25.0),
            ),
          ],
        ),
      ),
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
