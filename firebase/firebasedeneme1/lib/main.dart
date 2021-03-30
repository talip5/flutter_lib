import 'dart:math';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
String firstName;
  MyHomePage(){
    this.firstName="zafer";
  }
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

    String title1="Ahmet";
    String deger="";
  TextEditingController name=TextEditingController();

  //FutureOr Function(DocumentReference value) get documentReference => null;

 void initState() {
    super.initState();
    name = TextEditingController();
  }

  void dispose() {
    name.dispose();
    super.dispose();
  }

    final String fullName="ali";
    final String company="Kanaat";
    final int age=1;

  CollectionReference users=FirebaseFirestore.instance.collection("users");
    CollectionReference users5=FirebaseFirestore.instance.collection("dersler");

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
        'full_name': fullName, // John Doe
        'company': company, // Stokes and Sons
        'age': age // 42
      })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }
  final FirebaseFirestore firebaseFirestore=FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter" +title1),
      ),
      body: Center(
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                style: TextStyle(fontSize: 25.0),
                controller: name,
                decoration: InputDecoration(
           border: OutlineInputBorder(),
              labelText: 'name',labelStyle: TextStyle(fontSize: 25.0),
                ),
                onChanged: (String value){
                  deger=value;
                  if(deger=="") {
                    deger = "Giriş yapınız";
                  }
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.0),
              child:Center(
                child:Row(
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Read1"),
                      color: Colors.lightGreen,
                      onPressed: (){
                        setState(() {
                          print("Read");
                          read();
                        });
                      },
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    RaisedButton(
                      child: Text("Read2"),
                      color: Colors.lightGreen,
                      onPressed: (){
                        setState(() {
                          print("Read2");
                          read2();
                        });
                      },
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    RaisedButton(
                      child: Text("Read3"),
                      color: Colors.lightGreen,
                      onPressed: (){
                        setState(() {
                          print("Read");
                          read3();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  child: Text("Add1"),
                  color: Colors.lightBlue,
                  onPressed: (){
                    setState(() {
                      add();
                    });
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  child: Text("Add2"),
                  color: Colors.lightBlue,
                  onPressed: (){
                    setState(() {
                      add2();
                    });
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  child: Text("Add3"),
                  color: Colors.lightBlue,
                  onPressed: (){
                    setState(() {
                      add();
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  child: Text("Update1"),
                  color: Colors.orangeAccent,
                  onPressed: (){
                    setState(() {
                      update();
                    });
                  },
                ),
                SizedBox(
                  width: 20.0,
                ),
                RaisedButton(
                  child: Text("Update2"),
                  color: Colors.orangeAccent,
                  onPressed: (){
                    setState(() {
                      update();
                    });
                  },
                ),
                SizedBox(
                  width: 20.0,
                ),
                RaisedButton(
                  child: Text("Update3"),
                  color: Colors.orangeAccent,
                  onPressed: (){
                    setState(() {
                      update();
                    });
                  },
                ),
                SizedBox(
                  width: 20.0,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  child: Text("Delete1"),
                  color: Colors.redAccent,
                  onPressed: (){
                    setState(() {
                      delete();
                    });
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  child: Text("deleteAll"),
                  color: Colors.redAccent,
                  onPressed: (){
                    setState(() {
                      deleteAll();
                    });
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  child: Text("Delete3"),
                  color: Colors.redAccent,
                  onPressed: (){
                    setState(() {
                      delete();
                    });
                  },
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
    void read() {
      //firebaseFirestore.collection("dersler").snapshots().listen((data))=>data.document.forEach((doc)=>print(doc['not'])));
      firebaseFirestore
          .collection("users").get().then((value){
        print(QuerySnapshot);
      });
    }
    void read2() async{
    var data=await FirebaseFirestore.instance.collection("okul").doc("sinif1").get();

    }
    void read3() {

      firebaseFirestore.collection("okul").doc("sinif1").get().then((value){
        print(value.data);
      });
    }

  void add() async{
     //firebaseFirestore.collection("dersler").doc("matematik").set({"not":"75"});
   //await firebaseFirestore.collection("books").doc("1").set({"title":"master","description":"program"});
    //wait firebaseFirestore.collection("books").add({"title":"flutter","description":"dart"});
    //print("add");

  }
    void add2() async{
      firebaseFirestore.collection("okul").doc("sinif1").set(
          {
            "firstName" : "john",
            "lastName" : "demir35",
            }
          ).then((value){
        print("add2");
      });
    }

    void update() async{

      // ignore: deprecated_member_use
      await firebaseFirestore.collection("dersler").doc("matematk").update(
          {
            "username" : "userX3535",
            "password":"123"
          }).then((_){
        print("success!");
      });
      }

  void delete() async{
    await firebaseFirestore.collection("books").doc("1").delete().then((value){
      print("success!");
    });
  }
  void deleteAll() {
  }
}

