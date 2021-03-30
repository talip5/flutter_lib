import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';


// Import the firebase_core plugin


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
FirebaseDatabase db;
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "firebase",
      home: Scaffold(
        appBar: AppBar(title: Text("Firebase"),
        ),
        body: Column(
          children: <Widget>[
            Text("Database",style: TextStyle(fontSize: 25.0),
            ),
            RaisedButton(
              child: Text("Add"),
              color: Colors.orangeAccent,
              onPressed: (){
                ekleme();
                print("database");
              },
            ),
          ],
        ),
      ),
    );
  }
void ekleme(){
  String yapilacak="ali";
    db=FirebaseDatabase.instance;
    DatabaseReference dbRef=db.reference();
    dbRef.set(yapilacak);
}
}