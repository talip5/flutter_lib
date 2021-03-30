import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Student.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> liste=["ali","veli"];
  List<Student> students=[Student("ali",95),Student("veli",35)];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter",
      home: Container(
        color: Colors.green,
        child:Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (BuildContext context, int index) {
                 return Text(students[index].firstname+" "+students[index].not.toString(),
                     style: TextStyle(fontSize: 30.0,
                     decoration: TextDecoration.none,
                   ),
                 );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}