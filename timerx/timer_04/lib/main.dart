import 'dart:async';

import 'package:flutter/cupertino.dart';

String baslik="Dart3535";

void main(){
  print("main");
  //startTimeout();
  Timer(Duration(seconds: 5),(
      handleTimeout));
  Timer.periodic(Duration(milliseconds: 1), (timer) {
    print("period1");
    baslik="Dart35";
    runApp( Text("                   boş",textDirection: TextDirection.ltr,style: TextStyle(fontSize: 25.0),));
    timer.cancel();
  });
  Timer.periodic(Duration(seconds: 5), (timer) {
    print("period1");
    baslik="Dart35";
    runApp( Text("                   "+baslik,textDirection: TextDirection.ltr,style: TextStyle(fontSize: 25.0),));
    timer.cancel();
  });
  Timer.periodic(Duration(seconds: 15), (timer1) {
    print("period2");
    baslik="Dart";
    runApp( Text("                   "+baslik,textDirection: TextDirection.ltr,style: TextStyle(fontSize: 25.0),));
    timer1.cancel();
  });
}

const timeout=const Duration(seconds: 3);
const ms=const Duration(milliseconds: 1);

startTimeout([int milliseconds]){
  var duration=milliseconds==null ? timeout:ms*milliseconds;
  return Timer(duration,handleTimeout);{
  }
}

void handleTimeout()
{
  print("Timer3535");
}

void fonk_01(){
  Timer.periodic(Duration(seconds: 5), (timer) {
    print("period1");
    baslik="Dart35";
    runApp( Text("                   "+baslik,textDirection: TextDirection.ltr,style: TextStyle(fontSize: 25.0),));
    timer.cancel();
  });
}
