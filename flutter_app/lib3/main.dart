import 'package:flutter/material.dart';
import 'models/students.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


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
  int _counter = 0;
  List<Students> _list = [Students(name: 'ali'),Students(name: 'kerem'),Students(name: 'ahmet')];
  List<String> liste = ['ali', 'demir'];

  void listem() {
    _list.forEach((element) {
      print(element.name);
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget deneme() {
    return Text(
      'deneme',
      style: TextStyle(fontSize: 25.0),
    );
  }

  String isim(){
    return _list.last.name;
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
            deneme(),
            Expanded(
              child: ListView.builder(
                itemCount: _list.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(
                    _list[index].name,
                    style: TextStyle(fontSize: 25.0),
                  );
                },
              ),
            ),
            Text(
             isim(),style: TextStyle(fontSize: 25.0),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          listem();
          _incrementCounter();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
