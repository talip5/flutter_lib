import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

bool durum1 = false;
String zaman = "";

void start_stop() {
  if (durum1 == true) {
    Timer timer = Timer.periodic(Duration(seconds: 3), (time) {
      print("object");
    });
    durum1 = false;
  } else {
    Timer timer = Timer.periodic(Duration(seconds: 0), (time) {
      print("stop");
      time.cancel();
    });
    durum1 = true;
  }
}

void startTimer() {
  Timer timer = Timer.periodic(Duration(seconds: 3), (time) {
    print("object");
  });
}

void deneme() {
  Timer.periodic(Duration(seconds: 5), (timer5) {
    print(DateTime.now());
  });
}

void deneme1() {
  Timer(Duration(seconds: 3), () {
    print("Yeah, this line is printed after 3 seconds");
  });
}

void deneme2() {
  Timer.run(() {
    print("Yeah, this must be printed immediately.");
  });
}

void deneme3() {
  Timer(Duration(seconds: 0), () {
    print("Yeah, this line is printed after 3 second");
  });

  print('This line is printed first');
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int stop = 0;
  String izmir="İzmir";
  String izmir35="İzmir35";
  String sehir="İzmir";

  void stopTimer() {
    Timer.periodic(Duration(seconds: 1), (time) {
      print(DateTime.now());
      if (stop == 3) {
        setState(() {
          sehir=izmir35;
        });
        time.cancel();
        print(sehir);
        stop=stop-1;
      }
      setState(() {
        stop;
      });
      print(stop);
      ++stop;

    });
  }

  bool durum = true;
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
        title: "m",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter   " + sehir),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (durum == true) {
              print("floatingActionButton");
              startTimer();
              durum = false;
            } else {
              print("floatingActionButton");
              stopTimer();
              durum = true;
            }
          },
          child: Icon(Icons.navigation),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Timer"),
              color: Colors.greenAccent,
              onPressed: () {
                setState(() {
                  stop = 0;
                  //sehir=izmir;
                  stopTimer();
                });
              },
            ),
            Text(
              stop.toString(),
              style: TextStyle(fontSize: 40.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
