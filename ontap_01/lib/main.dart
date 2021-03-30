import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ontap_01/models/student.dart';
import 'package:ontap_01/screens/student_add.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  List<Students> students = [
    Students.withId(1, "Engin", "Demiroğ", 95),
    Students.withId(2, "Berkay", "Bilgin", 45),
    Students.withId(3, "Kerem", "Varış", 25)
  ];

  Students selectedStudent = Students.withId(0, "ali135", "veli", 85);

  bool degistir = false;

  String sehir = "Ankara";
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MaterialApp',
      home: Scaffold(
          appBar: AppBar(
            title: Text("AppBar"),
          ),
          body: Column(children: <Widget>[
            Expanded(
              child: ListView.builder(
                  itemCount: students.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(students[index].firstName +
                          " " +
                          students[index].lastName +
                          " " +
                          students[index].getArananKisi),
                      subtitle: Text("Öğrencinin aldığı not : " +
                          students[index].grade.toString() +
                          " [" +
                          students[index].getStatus +
                          " ]"),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/c/c9/Moon.jpg"),
                      ),
                      trailing: buidStatusIcon(students[index].grade),
                      onTap: () {
                        setState(() {
                          this.selectedStudent = students[index];
                        });
                        print("secilen : " + selectedStudent.firstName);
                      },
                    );
                  }),
            ),
            Text(
              "Şehir : " + sehir,
              style: TextStyle(fontSize: 25.0),
            ),

            Row(
              children: <Widget>[
                Flexible(
                 fit: FlexFit.tight,
                  flex: 2,
                  child: RaisedButton(
                    color: Colors.greenAccent,
                    child: Row(
                      children: <Widget>[
                       Icon(Icons.add),
                        SizedBox(width: 5.0,),
                        Text("Yeni öğrenci")
                      ],
                    ),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>StudentAdd(students)));
                    },
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: RaisedButton(
                    color: Colors.black12,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.add),
                        SizedBox(width: 5.0,),
                        Text("Güncelle")
                      ],
                    ),
                    onPressed: (){
                      print("Güncelle");
                    },
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex:1,
                  child: RaisedButton(
                    color: Colors.orange,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.add),
                        SizedBox(width: 5.0,),
                        Text("Sil")
                      ],
                    ),
                    onPressed: (){
                      print("Sil");
                    },
                  ),
                )
              ],
            )
          ]
          )
      ),
    )
    );
  }

  Widget buidStatusIcon(int grade) {
    if (grade >= 50) {
      return Icon(Icons.done);
    } else if (grade > 40) {
      return Icon(Icons.album);
    } else {
      return Icon(Icons.clear);
    }
  }
}
