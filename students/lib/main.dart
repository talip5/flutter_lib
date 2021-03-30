import 'package:flutter/material.dart';
import './page1.dart';
import './anaSayfa.dart';
import './myDrawer.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/":(context)=>AnaSayfa(),
      "/page1":(context)=>Page1(),
    },
  ));
}

