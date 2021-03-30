import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Info());
}

class Info extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white),
      child: Text("Hello World",textDirection: TextDirection.ltr,style: TextStyle(fontSize: 40.0,color: Colors.black87)
    ),
    );
  }
}