import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart';

main() async{
  File file=File("test2.txt");

  IOSink sink=file.openWrite(mode: FileMode.append);
  sink.add(utf8.encode("hello dart ${DateTime.now().toIso8601String()}"));
  await sink.flush();
  await sink.close();

  Stream<List<int>> fileStream=file.openRead();
  fileStream
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .listen((str)=>print(str),
      onDone:()=>print("Done reading File"),
      onError: (e)=>print(
        e.toString(),
      ));



//main() async{
  //loadString("Hello from Dart").then((s)=>print(s));
  /*String str=await loadString("Hello From Dart Async");
  print(str);*/
  /*Stream stream=exampleStream(20);
  await for(var s in stream) {
    print("Number : $s");
  }*/
  //exampleStream(2).listen((int x) { print("Number : $x");});


/*Stream<int> exampleStream(int x) async* {
  for(int i=0; i<=x; i++){
    yield i;
  }
}*/
/*Future<String> loadString(String str) {
  return Future.delayed(Duration(seconds: 15)).then((_){
    return "String:$str";
  });*/
/*
Future<String> loadString(String str) async{
  await Future.delayed(Duration(seconds: 15));
  return "String : $str";
}*/
}

