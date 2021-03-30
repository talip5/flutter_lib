import 'package:flutter/material.dart';
import 'package:navigator_03/screens/detail.dart';
import "package:navigator_03/screens/home.dart";
import 'package:navigator_03/screens/setting.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Home",style: TextStyle(fontSize: 25.0),),
          RaisedButton(
            child: Text("Detail Git",style: TextStyle(fontSize: 25.0),),
            onPressed: (){
              Navigator.pushNamed(context, "/detail");
            },
          ),
          RaisedButton(
            child: Text("Setting Git",style: TextStyle(fontSize: 25.0),),
            onPressed: (){
              Navigator.pushNamed(context, "/setting");
            },
          )
        ],
      ),
    );
  }
}
