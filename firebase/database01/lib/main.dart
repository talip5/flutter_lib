import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final DBRef=FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
           title: Text('database'),
      ),
      body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.amber,
              child: Text("writeData",style: TextStyle(fontSize: 30.0),),
              onPressed: (){
                writeData();
              },
            ),
            RaisedButton(
              color: Colors.amber,
              child: Text("readData",style: TextStyle(fontSize: 30.0),),
              onPressed: (){
                readData();
              },
            ),
            RaisedButton(
              color: Colors.amber,
              child: Text("update Data",style: TextStyle(fontSize: 30.0),),
              onPressed: (){
                updateData();
              },
            ),
            RaisedButton(
              color: Colors.amber,
              child: Text("delete Data",style: TextStyle(fontSize: 30.0),),
              onPressed: (){
                deleteData();
              },
            ),
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
        );
  }

  void writeData() {
DBRef.child("1").set({
  'id':'ID1',
  'data':'This is a sample Data'
});
  }

  void readData() {
    DBRef.once().then((DataSnapshot dataSnapshot){
      print(dataSnapshot.value);
    });
  }

  void updateData() {
    DBRef.child("1").update({
      'data':'This is a update value'
    });
  }

  void deleteData() {
    DBRef.child("1").remove();
  }
}
