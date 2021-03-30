import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() =>MyAppState();
}

class MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "flutter",
      home:MyHome(),
    );
  }
}

Widget MyHome(){
  return Scaffold(
    backgroundColor: Colors.amber,
    body: Column(
      children: [
        //Flexible(child:Text("flex1",style: TextStyle(fontSize: 30.0),),
         Flexible(child: Container(color: Colors.blueAccent,
           margin: EdgeInsets.all(10.0),
           padding: EdgeInsets.all(20),
           //child:Text("Flutter",style: TextStyle(fontSize: 30.0),),
           child: Container(color: Colors.deepPurple,child: Align(
             alignment: Alignment.bottomRight,
            child:Column(
              children: [
                Text("Dart1",style: TextStyle(fontSize: 30.0),),
                Text("Dart2",style: TextStyle(fontSize: 30.0),),
              ],
            ),
           ),
           ),
           ),
      flex:2),
        Flexible(child: Container(color: Colors.brown,),flex: 4,),
        Flexible(child: Container(color: Colors.green,),flex: 1,)
      ],
    ),
  );
}