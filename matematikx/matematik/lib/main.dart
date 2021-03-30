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
  void initState(){
  super.initState();
  myFocusNode=FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  TextEditingController kilo=TextEditingController();
  TextEditingController boy=TextEditingController();
  int _counter = 0;
  int counter=0;
  double sonuc=0;
  Timer _incrementCounterTimer;
  double sonuc_fixed;

  void hesapla(){
    setState(() {
      sonuc=double.parse(kilo.text)/(double.parse(boy.text)*double.parse(boy.text));
      sonuc_fixed = double.parse((sonuc).toStringAsFixed(2));
      print(sonuc_fixed);
          });
  }
  _incrementCounterx() {
    _incrementCounterTimer = Timer.periodic(Duration(seconds: 4), (timer) {
      counter++;
      print(counter);
      if( counter == 5 ) // <-- Change this to your preferred value of N
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
            TextField(
              focusNode: myFocusNode,
              style: TextStyle(fontSize: 25.0),
              keyboardType: TextInputType.number,
              autofocus: true,
              textAlign: TextAlign.center,
              controller: kilo,
              decoration: InputDecoration(
                labelText: "Kilo",
                hintText: "75",
              ),
            ),
            TextField(
              style: TextStyle(fontSize: 25.0),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              controller: boy,
              decoration: InputDecoration(
                labelText: "Boy",
                hintText: "1.74",
              ),
            ),
            RaisedButton(
              child: Text("Hesapla",style: TextStyle(fontSize: 20.0),),
              color: Colors.cyan,
              onPressed: (){
                counter=0;
                _incrementCounterx();
                if(kilo.text=="" || boy.text==""){
                print("sonuc");
                kilo.clear();
                boy.clear();
                }
                else{
                  hesapla();
                  kilo.clear();
                  boy.clear();
                }
                myFocusNode.requestFocus();
              },
            ),
            Text("Sonuc :$sonuc_fixed",style: TextStyle(fontSize: 25.0),),

            Text(
              "",style: TextStyle(fontSize: 20.0),
            ),

            RaisedButton(
              child: Text("Timer"),
              color: Colors.greenAccent,
              onPressed: (){
                counter=0;
                _incrementCounterx();
              },
            ),

            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
