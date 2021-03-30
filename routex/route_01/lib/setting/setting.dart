import 'package:flutter/material.dart';
import 'package:route_01/main.dart';

class Setting extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SettingState();
  }

}

class _SettingState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Setting"),
      ),
      body: Column(
        children: <Widget>[
          Text("Hello",textDirection: TextDirection.ltr,style: TextStyle(fontSize: 25.0),
          ),
          RaisedButton(
            child: Text("MyApp"),
            color: Colors.orangeAccent,
            onPressed: (){
              Navigator.pop(context);
              print("Routes");
            },
          ),
          RaisedButton(
            child: Text("Device"),
            color: Colors.orangeAccent,
            onPressed: (){
              print("Routes");
            },
          ),
        ],
      ),
    );
  }
}