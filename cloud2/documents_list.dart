import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
  Map data;
  CollectionReference collectionReference=FirebaseFirestore.instance.collection('data');
  String deneme(){
    String isim='Kemal';
    return isim;
  }
  fetchData(){
    CollectionReference collectionReference=FirebaseFirestore.instance.collection('data');
    collectionReference.snapshots().listen((snapshot) {
      setState(() {
        data=snapshot.docs[4].data();
      });
    });
  }
  addData(){
    //Map<String,dynamic> demoData={"name" : deneme(),
    Map<String,dynamic> demoData={"name" : '6',
      "motto" : "demir6"};

    CollectionReference collectionReference=FirebaseFirestore.instance.collection('data');
    collectionReference.add(demoData);
  }

  deleteData() async{
    CollectionReference collectionReference=FirebaseFirestore.instance.collection('data');
    QuerySnapshot querySnapshot=await collectionReference.get();
    querySnapshot.docs.length.toString();
    print(querySnapshot.docs.length);
  }

  updateData() async{
    QuerySnapshot querySnapshot=await FirebaseFirestore.instance.collection('data').get();
    querySnapshot.docs.forEach((document) {
      print(document.id);
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
            RaisedButton(
              color: Colors.green,
              child: Text('Fetch Data',style: TextStyle(fontSize: 25.0),
              ),
              onPressed: fetchData,
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              color: Colors.green,
              child: Text('Add Data',style: TextStyle(fontSize: 25.0),
              ),
              onPressed: addData,
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              color: Colors.green,
              child: Text('documentsList',style: TextStyle(fontSize: 25.0),
              ),
              onPressed: updateData,
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              color: Colors.green,
              child: Text('Delete Data',style: TextStyle(fontSize: 25.0),
              ),
              onPressed: deleteData,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(data.toString(),style: TextStyle(fontSize: 25.0),),
            SizedBox(
              height: 20.0,
            ),
            Text(data.toString(),style: TextStyle(fontSize: 25.0),),
            //Text(deleteData(),style: TextStyle(fontSize: 25.0),),
          ],
        ),
      ),
    );
  }
}
