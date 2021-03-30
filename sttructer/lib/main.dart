import 'package:flutter/material.dart';
import 'package:sttructer/screens/StudentAdd.dart';
import 'package:sttructer/models/Student.dart';

void main() {
  runApp(
    MaterialApp(
      title: "x",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;
  String pages = "Pages35";
  List<Student> student = [
    Student.grade("ali1", "demir1", 75),
    Student.grade("ali2", "demir2", 45),
    Student.grade("ali3", "demir3", 25),
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SAYFA"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: student.length,
                  itemBuilder:(BuildContext context, int index){
                  return ListTile(
                    title: Text(student[index].firstName),
                  );
                  }),
            ),
            Text(
              "Deneme",
              style: TextStyle(fontSize: 30.0),
            ),
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 35.0),
            ),
            Text(
              'PAGE',
              style: TextStyle(fontSize: 30),
            ),
            RaisedButton(
              child: Text(
                "Sayfa - 1",
                style: TextStyle(fontSize: 25.0),
              ),
              color: Colors.amber,
              onPressed: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StudentAdd(student)));
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
