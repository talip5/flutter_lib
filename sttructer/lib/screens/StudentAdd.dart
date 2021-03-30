import 'package:flutter/material.dart';
import 'package:sttructer/main.dart';
import 'package:sttructer/models/Student.dart';
class StudentAdd extends StatefulWidget {
 /* String firstName;
  String lastName;
  int grade;
  StudentAdd(String firstName,String lastName,int grade){
  this.firstName=firstName;
  this.lastName=lastName;
  this.grade=grade;
}
*/
  List<Student> student;
  StudentAdd(List<Student> student){
    this.student=student;
  }
  @override
  State<StatefulWidget> createState() {
    return _StudentAddState();
  }
}

class _StudentAddState extends State<StudentAdd> {
  int _counter = 0;
var student1=Student("CEM");
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialApp",
      home: Scaffold(
        appBar: AppBar(
          title: Text("SAYFA - 1"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("xxxx",style: TextStyle(fontSize: 30.0),),
              Text(_counter.toString(),style: TextStyle(fontSize: 35.0),),
              Text(
                'PAGE - 1',style: TextStyle(fontSize: 30),
              ),
              RaisedButton(
                child: Text("Öğrenci Ekle",style: TextStyle(fontSize: 25.0),),
                color: Colors.amber,
                onPressed: (){
                 //student1.firstName="AHMET";
                 widget.student.add(student1);
                 setState(() {

                 });
                },
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: widget.student.length,
                    itemBuilder: (BuildContext context,int index){
                      return (
                          ListTile(title: Text(widget.student[index].firstName))
                      );
                    }),
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
      ),
    );

  }
}
