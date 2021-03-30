import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import './error.dart';

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
      home: MyHomePage(title: 'Flutter Demo Home Page59'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
         _counter++;
    });
  }
void Error2(){
  FirebaseFirestore.instance.collection('data1').snapshots();
  AsyncSnapshot<QuerySnapshot> snapshot;
  if (snapshot.connectionState == ConnectionState.done) {
    print('tamam');
  }
  else{
    print('olmadı');
  }
}

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance.collection('data1').snapshots(),
              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                 if(!snapshot.hasData){
                    return Center(
                       //child: CircularProgressIndicator(),
                       child: Error1(),
                     );
                   }
                 if (snapshot.connectionState == ConnectionState.done) {
                   return Error1();
                 }
                return ListView(
                  children: snapshot.data.docs.map((document1){
                    return Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width/1.2,
                        height: MediaQuery.of(context).size.height/16,
                        child: Text(
                            ('title:' +document1['title'])
                        ),
                      ),
                    );
                  }).toList(),
                );

              },
            ),
          ),
          RaisedButton(
            child: Text('Deneme'),
            color: Colors.green,
            onPressed: (){
              setState(() {
                Error2();
              });
            },
          ),
        ],
      ),
       );
  }
}
