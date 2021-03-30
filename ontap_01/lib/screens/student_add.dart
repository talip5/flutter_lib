import 'package:flutter/material.dart';
import 'package:ontap_01/models/student.dart';

class StudentAdd extends StatefulWidget{
 List<Students> students;
 // StudentAdd(List<Students> students){
    //this.students=students;
  //}
 StudentAdd(this.students);

  @override
  State<StatefulWidget> createState() {
    
    return _StudentAddState();
  }

}

class _StudentAddState extends State{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Yeni öğrenci"),),
      body: Center(child: Text("Yeni öğrenci"),),
    );
  }
}