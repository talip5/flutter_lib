import 'package:flutter/material.dart';

class Second extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SecondState();
  }

}

class _SecondState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second"),
      ),
    );
  }
}