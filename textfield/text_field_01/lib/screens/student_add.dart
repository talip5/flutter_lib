import 'package:flutter/material.dart';
import 'package:text_field_01/models/studentd.dart';

class StudentAdd extends StatefulWidget {
  List<Students> students;
String ulke="Italya";

  /*StudentAdd(List<Students> students){
    this.students=students;
  }*/
  StudentAdd(this.students);

  @override
  State<StatefulWidget> createState() {
    return _StudentAddState();
  }
}

class _StudentAddState extends State<StudentAdd> {
  var formkey1 = GlobalKey<FormState>();
  var student = Students("", "", 0);
    @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Yeni öğrenci"),
        ),
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Form(
            key: formkey1,
            child: Column(
              children: <Widget>[
                buildFirstNameField(),
                buildLastNameField(),
                buildGradeField(),
                buildSubmitButton()
              ],
            ),
          ),
        ));
  }

  Widget buildFirstNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Öğrenci adı", hintText: "Engin"),
      onSaved: (String value) {
        student.firstName = value;
      },
    );
  }

  Widget buildLastNameField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: "Öğrenci soyadı", hintText: "Engin"),
      onSaved: (String value) {
        student.lastName = value;
      },
    );
  }

  Widget buildGradeField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Aldığı not ", hintText: "65"),
      onSaved: (String value) {
        student.grade = int.parse(value);
        print(student.grade);
      },
    );
  }

  Widget buildSubmitButton() {
    return RaisedButton(
      child: Text("Kaydet"),
      onPressed: () {
        formkey1.currentState.save();
        widget.students.add(student);
        Navigator.pop(context);
      },
    );
  }
}
