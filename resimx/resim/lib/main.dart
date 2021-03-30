import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body:Center(
          child: Column(
            children: <Widget>[
              Image.asset("resimler/dosya/ax.png",width: 200,height: 150,),
             Image.network("https://dosya.wmaraci.com/nedir/jpeg.png",height: 150,),
              Image.asset("resimler/dosya/ata7.jpg",width: 200,height: 150,),
              Image.asset("resimler/dosya/ata5.jpg",width: 200,height: 150,),
            ],
          ),
      )
      );
  }
}
