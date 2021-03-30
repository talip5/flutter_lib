import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         primarySwatch: Colors.blue,
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
  int _counter = 0;
  String deneme='deneme';
  Future<String> _incrementCounter() async{
      String str=await loadString("Dart");
      deneme=str;
    print(str);
  }
Future<String> loadString(String str) async{
    await Future.delayed(Duration(seconds: 3));
    tetikleme();
    return "String :$str";
}

void tetikleme(){
    setState(() {

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
            Text('Deneme : $deneme',style: TextStyle(fontSize: 30.0),),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 80,
        height: 80,
        child: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () {
            setState(() {
              _incrementCounter();
            });
          },
            tooltip: 'Increment',
            child:
           Icon(Icons.add),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
