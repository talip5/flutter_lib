import 'package:flutter/material.dart';
import 'package:route/Screens/detail.dart';
import 'package:route/Screens/home.dart';
import 'package:route/Screens/setting.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: "/detail",
    routes: {
      "/":(context)=>Home(),
      "/detail":(context)=>Detail(),
      "/setting":(context)=>Setting(),
    },
  ));
}