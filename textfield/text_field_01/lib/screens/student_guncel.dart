import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_field_01/main.dart';
import 'package:text_field_01/models/studentd.dart';

class StudentGuncel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StudentGuncelState();
  }
}

class _StudentGuncelState extends State {
  List<Students> student1 = [
    Students.withId(1, "ali11", "demir1", 95),
    Students.withId(1, "ali22", "demir2", 45),
    Students.withId(1, "ali33", "demir3", 25)
  ];
 String sehir="izmir";
  Students selectedStudent1 = Students.withId(0, "veli", "demir", 95);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Güncelle  "+ selectedStudent1.grade.toString()),
      ),
      body: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Form(
                  child: Column(
                    children: <Widget>[
                      buildfirstNameField(),
                      buildlastNameField(),
                      buildGradeField(),
                      Expanded(
                        child: ListView.builder(
                            itemCount: student1.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                title: Text(
                                  student1[index].firstName,
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                subtitle: Text(
                                  "Aldığı not " +
                                      student1[index].grade.toString(),
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                leading: CircleAvatar(
                                  backgroundColor: Colors.brown.shade700,
                                  child: Text(
                                    student1[index].firstName[0] +
                                        " " +
                                        student1[index].lastName[0],
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                ),
                                onTap: (){
                                  setState(() {
                                  selectedStudent1=student1[index];
                                  });
                                  print(student1[index].firstName);
                                },
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Secilen öğrenci" + selectedStudent1.firstName,
                style: TextStyle(fontSize: 20.0),
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: RaisedButton(
                      color: Colors.green,
                      child: Text("Yeni öğrenci"),
                      onPressed: () {
                        print("Yeni öğrenci");
                      },
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: RaisedButton(
                      color: Colors.greenAccent,
                      child: Text(
                        "Güncelle",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      onPressed: () {
                        print("Güncelle");
                      },
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: RaisedButton(
                      color: Colors.orangeAccent,
                      child: Text("Sil"),
                      onPressed: () {
                        print("Sil");
                      },
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }

  Widget buildfirstNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Güncel Adı", hintText: "Engin"),
    );
  }

  Widget buildlastNameField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: "Güncel Soyadı", hintText: " Demiroğ"),
    );
  }

  Widget buildGradeField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Güncel not", hintText: "65"),
    );
  }
}
