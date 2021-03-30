import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:route_01/second/second.dart';
import 'package:route_01/setting/setting.dart';
import 'package:route_01/device/device.dart';
import 'package:route_01/baudrate/baudrate.dart';
import 'package:route_01/deneme/deneme.dart';

void main() {
    runApp(MaterialApp(
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/':(context)=>MyApp(),
      '/second':(context)=>Second(),
      '/setting':(context)=>Setting(),
      '/device':(context)=>Device(),
      '/baudrade':(context)=>Baudrate(),
      '/deneme':(context)=>Deneme(),
    }
  ));
  }

  class MyApp extends StatefulWidget{
    String firstname="ali";
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }

  }

class _MyAppState extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Routes"),
      ),
      body: Column(
        children: <Widget>[
          Text("Hello",textDirection: TextDirection.ltr,style: TextStyle(fontSize: 25.0),
          ),
          RaisedButton(
            child: Text("Second"),
            color: Colors.orangeAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/second');
            print("Routes");
            },
            ),
          RaisedButton(
            child: Text("Setting"),
            color: Colors.orangeAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/setting');
              print("Routes");
            },
          ),
          RaisedButton(
            child: Text("Device"),
            color: Colors.orangeAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/device');
              print("Routes");
            },
          ),
          RaisedButton(
            child: Text("Baudrate"),
            color: Colors.orangeAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/baudrade');
              print("Routes");
            },
          ),
          RaisedButton(
            child: Text("Deneme"),
            color: Colors.brown,
            onPressed: (){
              Navigator.pushNamed(context, '/deneme');
              print("deneme");
           },
          ),
        ],
      ),
    );
  }
}