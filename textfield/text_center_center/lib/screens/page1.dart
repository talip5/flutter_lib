import 'package:flutter/material.dart';
import 'package:text_center_center/screens/page2.dart';
import 'package:text_center_center/models/student.dart';

class Page1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Page1State();
  }
}

class _Page1State extends State {
  List<Student> student = [
    Student("Ali11", "Demir", 90),
    Student("Ali12", "Demir", 45),
    Student("Ali13", "Demir", 25),
    Student("Ali145", "Demir", 75)
  ];

  String sehir = "adana";

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text(sehir),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                "Page1",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            RaisedButton(
              child: Text(
                "Page2'ye git",
                style: TextStyle(fontSize: 25.0),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page2()));
              },
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: student.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(
                        student[index].firstName,
                        style: TextStyle(fontSize: 25.0),
                      ),
                      subtitle: Text(
                        "Öğrencinin notu :" + student[index].grade.toString()+" ["+student[index].getStatus+" ]",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      onTap: () {
                        setState(() {
                          sehir = student[index].firstName;
                        });
                        print(student[index].firstName);
                      },
                    );
                  }),
            ),
            TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    labelStyle: (TextStyle(fontSize: 25.0)),
                    hintText: "Enter a search term",
                    hintStyle: TextStyle(fontSize: 25.0))),
          ],
        ),
      ),
    ));
  }
}
