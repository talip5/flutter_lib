import 'package:flutter/material.dart';
import 'package:route_01/main.dart';

class Baudrate extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _BaudrateState();
  }
}

class _BaudrateState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Baudrate"),
      ),body: Center(
      child: Text("dart",style: TextStyle(fontSize: 30.0),),
    ),
    );
  }
}