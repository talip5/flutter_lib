import 'package:flutter/material.dart';

void main(){
  runApp(MyApp extends StatefulWidget());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState<StatefulWidget> createState() {
    // TODO: implement createState
    MyAppState();
  }

}

class MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "flutter",
      home: Center(
        child: Text("Dart",style: TextStyle(fontSize: 30.0),),
      ),
    );
  }
}