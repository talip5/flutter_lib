import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

void zaman() {
  Timer(Duration(seconds: 5), () {
    print("Yeah, this line is printed after 3 seconds");
  });
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;
  int durum1=1;

  void _incrementCounter() {
    setState(() {
      if (_counter <= 6) {
        _counter++;
      } else {
      _counter = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page   '+durum1.toString()),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            container_01(_counter),
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 40.0),
            ),
            konum(),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget container_01(int resim) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 300,
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:
              AssetImage("assets/images/" + "ata" + resim.toString() + ".jpg"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

 Widget konum() {
    return RaisedButton(
      color: Colors.amberAccent,
      child: Text("Durum"),
      onPressed: (){
        setState(() {
          if(durum1<5){
            ++durum1;
          }
          else{
            durum1=1;
            if(_counter<=6){
              ++ _counter;
            }
            else{
              _counter=1;
            }
          }
        });
      },
    );

 }
}
