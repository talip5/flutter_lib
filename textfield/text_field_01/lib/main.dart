import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_field_01/models/studentd.dart';
import 'package:text_field_01/screens/student_add.dart';
import 'package:text_field_01/screens/student_guncel.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false, title: "Baslik", home: Yaz()));
}

class Yaz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Yaz();
  }
}

class _Yaz extends State {
  List<Students> students = [
    Students.withId(1, "Engin", "Demiroğ", 95),
    Students.withId(2, "Berkay", "Demir", 45),
    Students.withId(3, "Kerem", "Varış", 25)
  ];

  Students selectedStudent = Students.withId(1, "Hiçbiri", "", 0);

  int count1 = 0;
  Color renk = Colors.lightBlue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text("Öğrenci takip programı")),
      ),
      backgroundColor: renk,
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      students[index].firstName +
                          " " +
                          students[index].lastName,
                      style: TextStyle(fontSize: 25.0),
                    ),
                    subtitle: Text(
                        "Aldığı not : " +
                            students[index].grade.toString() +
                            "[ " +
                            students[index].getStatus +
                            " ]",
                        style: TextStyle(fontSize: 20.0)),
                    leading: CircleAvatar(
                      backgroundColor: Colors.brown.shade800,
                      child: Text(
                        students[index].firstName[0] +
                            " " +
                            students[index].lastName[0],
                        style: TextStyle(fontSize: 20.0),
                      ),
                      //backgroundImage: NetworkImage("C:\Users\Atahan\Documents\talip\image\A3-106x79"),
                    ),
                    trailing: buildIconStatus(students[index].grade),
                    onTap: () {
                      setState(() {
                        selectedStudent = students[index];
                        print(selectedStudent.firstName);
                      });
                    },
                  );
                }),
          ),
          Text(
            "Seçilen öğrenci : " + selectedStudent.firstName,
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 25.0),
          ),
          Row(
            children: <Widget>[
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: RaisedButton(
                  color: Colors.greenAccent,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.add),
                      SizedBox(width: 5.0),
                      Text(
                        "Yeni öğrenci",
                        style: TextStyle(fontSize: 15.0),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StudentAdd(students)));
                    print("Yeni öğrenci");
                  },
                ),
              ),
              Flexible(
                flex: 2,
                child: RaisedButton(
                  color: Colors.orange,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.add),
                      SizedBox(width: 5.0),
                      Text(
                        "Güncelle",
                        style: TextStyle(fontSize: 19.0),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StudentGuncel()));
                    print("Güncelle");
                  },
                ),
              ),
              Flexible(
                flex: 1,
                child: RaisedButton(
                  color: Colors.redAccent,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.add),
                      SizedBox(width: 0),
                      Text(
                        "Sil",
                        style: TextStyle(fontSize: 14.3),
                      )
                    ],
                  ),
                  onPressed: () {
                    print("Sil");
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Icon buildIconStatus(int grade) {
    if (grade > 50) {
      return Icon(Icons.done);
    } else if (grade > 40) {
      return Icon(Icons.album);
    } else {
      return Icon(Icons.clear);
    }
  }
}
