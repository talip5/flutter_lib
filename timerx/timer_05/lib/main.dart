import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  //fonk1().then((String message) => print(message));
  //print('ilk deger');
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String appBarName = 'App Bar 35';
  String textName='textName';
  void say() {
    setState(() {
      print('say');
    });
  }

  Future textNameX() async {
    await null;
    Timer(Duration(seconds: 4), () {
      textName = 'yeniTextName';
      setState(() {
        print('textName');
      });
    });
  }

  void textNameY() {
    Timer(Duration(seconds: 4), () {
      textName = 'yeniTextName';
      setState(() {
        print('textName');
      });
    });
  }

 Future fonk1() async {
    await null;
      Timer(Duration(seconds: 4), () {
        appBarName = 'appBarFirst35';
        setState(() {
          print('fonk1');
        });
        //print(appBarName);
      });
  }

  Future<String> fonk2() async {
    await null;
    Timer(Duration(seconds: 4), () {
      appBarName = 'appBarFirst35';
      setState(() {
        print('fonk1');
      });
      //print(appBarName);
    });
    return appBarName;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   fonk1();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(appBarName),
        ),
        backgroundColor: Colors.lime,
        body: Center(
          child: Column(
            children: [
              Text(textName,style: TextStyle(fontSize: 30.0),),
              FlatButton(
                color: Colors.red,
                child: Text('Timer'),
                onPressed: (){
                  textNameY();
                  print('Timer');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String fonk() {
  String sonuc = "olumlu";
  Timer(Duration(seconds: 4), () {
    print("fonksiyon");
    return sonuc;
  });
}

Future<String> fonk1() async {
  await null;
  Timer(Duration(seconds: 4), () {
    print("fonksiyon");
  });
  return 'Complement35';
}
