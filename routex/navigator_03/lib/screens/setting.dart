import 'package:flutter/material.dart';
import 'package:navigator_03/screens/detail.dart';
import "package:navigator_03/screens/home.dart";
import 'package:navigator_03/screens/setting.dart';

class Setting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Setting",style: TextStyle(fontSize: 25.0),),
          RaisedButton(
            child: Text("Home Git",style: TextStyle(fontSize: 25.0),),
            onPressed: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
