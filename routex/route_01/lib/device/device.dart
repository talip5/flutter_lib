import 'package:flutter/material.dart';

class Device extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DeviceState();
  }

}

class _DeviceState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Device"),
      ),
    );
  }
}