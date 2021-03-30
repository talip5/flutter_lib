import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "M",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Flutter")
     ),
     body:Column(
       children: <Widget>[
         Image.asset('assets/images/ata7.jpg'),
         Expanded(child: Image.asset('assets/images/ata6.jpg')),
       ],
     )
     
   );
  }
}
