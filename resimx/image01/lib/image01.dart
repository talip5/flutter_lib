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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.amber,
      ),
      body:Column(
        children: [
          SizedBox(
            child: Container(
                color: Colors.brown,
                width: 400.0,
                height: 20.0),
          ),
          Container(
            color: Colors.blueAccent,
            width: 400,
            height: 300,
            child:Image.asset('assets/images/leylek.jpg'),
          ),
          new Image.asset(
            'assets/images/leylek.jpg',
            width: 300.0,
            height: 240.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
