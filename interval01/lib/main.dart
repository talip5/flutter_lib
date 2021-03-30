import 'package:flutter/material.dart';
import 'dart:async';

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
  int not=0;

  void zaman(){
    Timer.periodic(Duration(seconds: 5), (timer) {
      print(DateTime.now());
      timer.cancel();
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void artis(){
    setState(() {
      not++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
      ),
      backgroundColor: Colors.amber,
      body: Center(
           child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(not.toString(),style: TextStyle(fontSize: 30.0),),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
              child: Text("zaman",style: TextStyle(fontSize: 30.0),),
              color: Colors.deepOrange,
              onPressed: (){
               print("durdur");
              },
            ),
            RaisedButton(
              child: Text("Tick",style: TextStyle(fontSize: 30.0),),
              color: Colors.cyan,
              onPressed: (){
                print("Tick");
                {
                  final duration = Duration(seconds: 1);
                  Timer.periodic(duration, (timer) {
                    // Stop the timer when it matches a condition
                    if (timer.tick >3) {
                      timer.cancel();
                      print("periyod bitti");
                    }
                    else{
                      print('Tick: ${timer.tick}');
                      artis();
                    }
                  });
                }
                not=0;
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          zaman();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
