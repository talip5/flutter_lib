import 'package:flutter/material.dart';
import 'package:class_01/screen01.dart';

void main() {
  //runApp(MyApp());
  int not=Deneme().yeni_deger;
  print(not);
  int toplamaTablosu=not*5;
  print(toplamaTablosu);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter",
      home: MyHomePage(),
    ));
  }
}

class MyHomePage extends StatefulWidget {
  int yeni = Deneme().yeni_deger;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _isButtonDisabled;

  @override
  void initState() {
    _isButtonDisabled = false;
  }

  void genel(String yazi) {
    print(yazi);
  }

  Widget baslik() {
    if (_counter == 0) {
      return Text(
        "başlık356",
        style: TextStyle(fontSize: 30.0),
      );
    } else {
      return Text(
        "başlık987",
        style: TextStyle(fontSize: 30.0),
      );
    }
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Color renk() {
    return Colors.brown;
  }

  void _incrementCounterx() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "App Bar 35",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          children: [
            Text(
              widget.yeni.toString(),
              style: TextStyle(fontSize: 40.0),
            ),
            baslik(),
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 40.0),
            ),
            RaisedButton(
                child: Text(
                  "Arttır",
                  style: TextStyle(fontSize: 30.0),
                ),
                color: renk(),
                onPressed: () {
                  _incrementCounter();
                  genel("Arttır");
                }),
            SizedBox(
              width: 10,
              height: 10,
            ),
            RaisedButton(
                color: renk(),
                child: Text(
                  "Azalt",
                  style: TextStyle(fontSize: 30.0),
                ),
                onPressed: () {
                  _incrementCounterx();
                  genel("Azalt");
                }),
          ],
        ),
      ),
    );
  }
}
