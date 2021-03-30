import 'dart:async';
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
  final int deger=100;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Timer _incrementCounterTimer;
  int counter=10;
  int counter1=0;
  int sayi1=20;

  void _incrementCounterx() {
      setState(() {
        _incrementCounterTimer = Timer.periodic(Duration(seconds: 2), (timer) {
         counter=counter+2;
          print(counter);
          if (counter == 20) _incrementCounterTimer.cancel();
      });
    });
  }

 int cins(){
    print(widget.deger.runtimeType);
    print(widget.deger*5);
    sayi1=widget.deger*3;
    print('sayi1:$sayi1');
   return sayi1;
 }

  void say(){
     for(int i=0; i<5; i++) {
       _incrementCounterx();
    if(counter1>=5){
      counter1=0;
          }
    else{
      print('counter1 : $counter1');
      counter1++;
    }
    }
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$sayi1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: new Text("Button"),
                onPressed:(){
                  setState(() {
                    int aktar=cins();
                    print(aktar);
                  });
                }
                ),
            Text(
              '$sayi1',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}

