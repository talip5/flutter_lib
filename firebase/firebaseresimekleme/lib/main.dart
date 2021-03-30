import 'dart:io';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_database/firebase_database.dart';


void main() {
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
      home: MyHomePage(title: 'Flutter Firebase Resim Ekleme'),
    );
  }
}

File resim;
String resimyolu;


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future resimAl() async{
    var secilenResim=await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      resim=secilenResim;
      resimyolu=basename(resim.path);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:resimAl,
        child: Icon(Icons.image),
      ),
    );
  }
}
