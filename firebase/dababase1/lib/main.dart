import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
         visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final FirebaseFirestore firebaseFirestore=FirebaseFirestore.instance;
  final FirebaseDatabase db=FirebaseDatabase.instance;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
        _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
            title: Text(widget.title),
      ),
         body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Database",style: TextStyle(fontSize: 25.0),
            ),
            RaisedButton(
              child: Text("Add"),
              color: Colors.orangeAccent,
              onPressed: (){
                add();
                print("Add database");
              },
            ),
            RaisedButton(
              child: Text("Create"),
              color: Colors.lightGreen,
              onPressed: (){
                print("Create database");
                create();
              },
            ),
            RaisedButton(
              child: Text("Read"),
              color: Colors.lightGreen,
              onPressed: (){
                print("Read database");
                read();
              },
            ),
            RaisedButton(
              child: Text("Update"),
              color: Colors.lightBlue,
              onPressed: (){
                print("Update database");
                update();
              },
            ),
            RaisedButton(
              child: Text("Delete"),
              color: Colors.redAccent,
              onPressed: (){
                print("Delete database");
                delete();
              },
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  void add(){
    String yapilacak="ali11";
    DatabaseReference dbRef=db.reference().child("message");
    String key=dbRef.push().key;
    DatabaseReference dbRefYeni=db.reference().child("message/"+key);
    dbRefYeni.set(yapilacak);
  }

  void create() async{
    try{
    await firebaseFirestore.collection('users2').doc('testuser').set({
      'first':'test',
    'lastName':'user',
    });
    }catch(e){
      print(e);
    }
  }
  void read() async{
    DocumentSnapshot documentSnapshot;
    try{
      documentSnapshot=await firebaseFirestore.collection('users2').doc('testuser').get();
      print(documentSnapshot.data());
    }catch(e){
      print(e);
    }
  }

  void update() async{
    try{
      await firebaseFirestore.collection('users2').doc('testuser').update({
        'first':'test358',
        'lastName':'user358',
      });
    }catch(e){
      print(e);
    }
  }
  void delete() async{
    try{
      firebaseFirestore.collection('users2').doc('testuser').delete();
    }catch(e){
      print(e);
    }
  }

}


