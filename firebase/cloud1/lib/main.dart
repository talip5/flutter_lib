import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

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
  int _counter = 0;
  File secilenResim;

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
            RaisedButton(
              child: Text("Galeriden resim yükleme",style: TextStyle(fontSize: 25.0),),
              color: Colors.teal,
              onPressed:galeriden_yukleme,
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
              child: Text("Kameradan resim yükleme",style: TextStyle(fontSize: 25.0),),
              color: Colors.orangeAccent,
              onPressed: kameradan_yukleme,
            ),
            Expanded(
              child: secilenResim==null ? Text("Resim yok") : Image.file(secilenResim),
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
  void galeriden_yukleme() async{
    var resim=await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      secilenResim=resim;
    });
    StorageReference ref=FirebaseStorage.instance.ref().child("user").child("ali").child("profil.png");
    StorageUploadTask uploadTask=ref.putFile(secilenResim);
    var uri=await(await uploadTask.onComplete).ref.getDownloadURL();
    debugPrint("url resim"+uri);
  }

  void kameradan_yukleme() async{
    var resim=await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      secilenResim=resim;
    });
    StorageReference ref=FirebaseStorage.instance.ref().child("user5").child("profil5.png");
    StorageUploadTask uploadTask=ref.putFile(secilenResim);
    var uri=await(await uploadTask.onComplete).ref.getDownloadURL();
    debugPrint("url5 resim"+uri);
  }
}

