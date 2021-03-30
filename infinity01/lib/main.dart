import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      body: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
         Container(
           width: 200,
           height: 100,
           color: Colors.green,
         ),
         Container(
           width: 200,
           height: 100,
           color: Colors.amber,
         ),
         Container(
           width: 200,
           height: 100,
           color: Colors.blueAccent,
         ),
        SizedBox(height: 10,),
        Text('Flutter',style: TextStyle(fontFamily: 'Satisfy',fontSize: 30),)
       ],
        ),
    );
  }
}
