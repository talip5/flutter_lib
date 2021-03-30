import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _MyAppState();
  }

}

class _MyAppState extends State{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "m",
     home: Scaffold(
       appBar: AppBar(title: Text("Clock"),
       ),
     ),
   );
  }
}