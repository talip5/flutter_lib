import 'package:flutter/material.dart';
import './myDrawer.dart';
class AnaSayfa extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kurnaz Nakliyat'),
        ),
        drawer:MyDrawer(),
        body: Container(
          child: Center(
            child: Text('AnaSayfa'),
          ),
        ),
      ),
    );
  }

}