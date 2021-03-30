import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.lime,
      title: 'Flutter',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.green,
          appBar:AppBar(
            backgroundColor: Colors.blue,
            toolbarHeight: 100,
          ) ,
          body: Center(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.lime,
                    child: Text(
                      'Flutter     ',style:TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Wrap(
                  direction: Axis.horizontal,
                  children: [
                    Container(
                      color: Colors.redAccent,
                      child: Text(
                        'Dart                      ',style:TextStyle(fontSize: 35),
                      ),
                    ),
                    Container(
                      color: Colors.redAccent,
                      child: Icon(Icons.add),
                    ),
                    Container(
                      color: Colors.redAccent,
                      child: Text(
                        'Dart                      ',style:TextStyle(fontSize: 35),
                      ),
                    ),
                    Container(
                      color: Colors.redAccent,
                      child: Icon(Icons.add,size: 50,),
                    ),
                    Container(
                      color: Colors.redAccent,
                      child: Icon(Icons.add),
                    ),
                    Container(
                      color: Colors.redAccent,
                      child: Icon(Icons.add,size: 50,),
                    ),
                    Container(
                      color: Colors.redAccent,
                      child: Icon(Icons.add,size: 50,),
                    ),
                    Container(
                      color: Colors.redAccent,
                      child: Icon(Icons.add,size: 50,),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}