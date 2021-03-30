import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String appBarName = 'App Bar 35';
  String textName = 'textName';
  double widthContainer = 50;
  double aktar=0;
  int counter = 1;

  void ileri() {
    if (widthContainer > 0 && widthContainer <= 350) {
      widthContainer += 50;
    } else {
      widthContainer = 400;
    }
  }

  void geri() {
    if (widthContainer > 50 && widthContainer <= 400) {
      widthContainer -= 50;
    } else {
      widthContainer = 50;
    }
  }

String yaz() {
    print('aktar');
    return 'widthContainer';
}

 void textNameX() {
        Timer timer = new Timer.periodic(new Duration(seconds: 4), (timer) {
          ileri();
          setState(() {
            print('textName');
            timer.cancel();
          });
        });
  }

  cancelTimer() {
    Timer.periodic(Duration(seconds: 5), (timer1) {print(widthContainer);
      //timer1.cancel();
    if(widthContainer<350) {
      ileri();
      setState(() {
        print('textName');
      });
    }
    else{
      timer1.cancel();
    }
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(appBarName),
        ),
        backgroundColor: Colors.lime,
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: widthContainer,
                      height: 50,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: FlatButton(
                color: Colors.red,
                child: Text('İleri'),
                onPressed:(){
                  cancelTimer();
                  //textNameX();
                },
              ),
            ),
            Text(yaz(),style: TextStyle(fontSize: 30.0),),
            Container(
              child: FlatButton(
                color: Colors.blue,
                child: Text('Geri'),
                onPressed: () {
                  setState(() {
                    geri();
                    print('Geri');
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
