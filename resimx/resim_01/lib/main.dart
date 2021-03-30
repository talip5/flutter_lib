import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialApp",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print("floatingActionButton");
          },
          child: Icon(Icons.alarm),
          autofocus: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.amber,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.person),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.message),
                onPressed: (){},
              ),
            ],
          ),
          shape: CircularNotchedRectangle(),
        ),
      ),
    );
  }
}