import 'package:flutter/material.dart';
import 'package:navigator_03/screens/detail.dart';
import "package:navigator_03/screens/home.dart";
import 'package:navigator_03/screens/setting.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => Home(),
      "/detail":(context)=>Detail(),
      "/setting":(context)=>Setting(),
    },
  ));
}


