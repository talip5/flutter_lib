import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Custom Painter',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyPainter(),
    );
  }
}

class MyPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lines'),
      ),
      body: CustomPaint(
        painter: ShapePainter(),
        child: Container(),
      ),
    );
  }
}
class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 15
      ..strokeCap = StrokeCap.round;

    Offset startingPoint = Offset(0, size.height / 2);
    Offset endingPoint = Offset(size.width, size.height / 2);

    canvas.drawLine(startingPoint, endingPoint, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}