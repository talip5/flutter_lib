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

  void say() {
    setState(() {
      print('say');
    });
  }

  Future<String> fonk1() async {
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
              FlatButton(
                  color: Colors.green,
                  child: Text('Future'),
                  onPressed: () {
                    setState(() {
                      fonk1();
                      appBarName=appBarName;
                    });
                  }),
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
