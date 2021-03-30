import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ogrenci_takip/models/student.dart';
final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  A a=A();
  a.x();
  B b=B();
  b.x();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "My App",
    theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
    //theme: ThemeData(primarySwatch: Colors.blue),
    home: Material(
        child: Scaffold(
      appBar: AppBar(
        title: (Text("Öğrenci Takip Sistemi35")),
      ),
      body: screen(),
      //backgroundColor: Colors.amber,
    )),
  ));
}

class screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _screenState();
  }

}

class _screenState extends State{
  List<Students> students = [
    Students.withId(1, "Engin", "Demiroğ", 95),
    Students.withId(2, "Berkay", "Demir", 45),
    Students.withId(3, "Kerem", "Çelik", 25)
  ];

  Students selectedStudent=Students.withId(0, "Hiç kimse","",0);
  String sehir="izmir";
  @override
  Widget build(BuildContext context) {
    return (Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: students.length,
            itemBuilder: (BuildContext context, int index) {
              return buildBody(context, index);
             }
          ),
        ),
        Text("Secilen öğrenci : "+selectedStudent.firstName, textDirection: TextDirection.rtl,
          style: TextStyle(fontSize: 20.0),),
        Text("", textDirection: TextDirection.rtl,
          style: TextStyle(fontSize: 20.0),),
        Text("Şehir : "+ sehir, textDirection: TextDirection.rtl,
          style: TextStyle(fontSize: 20.0),),
        Row(
          children: <Widget>[
            Text("Row")
          ],
        )
      ],
    ));
  }

  Widget buildBody(BuildContext context, int index) {
    return (Center(
        child: ListTile(
            title: Text(
              students[index].firstName + " " + students[index].lastName,
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
              setState(() {
                this.selectedStudent=students[index];
                if(students[index].firstName=="Engin"){
                  sehir="ankara";
                }else if(students[index].firstName=="Kerem"){
                  sehir="Kayseri";
                }
                else{
                  sehir="İZMİR";
                }
              });
              //print(students[index].firstName);
               print(this.selectedStudent.firstName);
            },
            //subtitle: gecti(students[index].grade),
            subtitle: Text("Öğrencinin notu :"+ students[index].grade.toString()+"  "+"["+students[index].getStatus+"]",style: TextStyle(fontSize: 15.0),),
            leading: CircleAvatar(
              backgroundColor: Colors.brown.shade800,
              child: Text(students[index].firstName[0] + " " +
                  students[index].lastName[0]),
            ),
            //trailing: Icon(Icons.done),
            trailing: buildStatusIcons(students[index].grade),
             onLongPress: () {
              print("uzun basıldı");
            }
        )
    )
    );
  }

  Widget buildStatusIcons(int grade) {
    if (grade >= 50) {
      return Icon(Icons.done);
    }
    else if (grade > 40) {
      return Icon(Icons.album);
    }
    else {
      return Icon(Icons.clear);
    }
  }

 Widget gecti(int grade) {
    if(grade>50){
     return (Text("Öğrencinin notu :"+grade.toString(),style: TextStyle(fontSize: 15.0),));
    }
    else if(grade>40){
      return(Text("Öğrencinin notu :"+grade.toString(),style: TextStyle(fontSize: 15.0),));
    }
    else{
     return(Text("Öğrencinin notu :"+grade.toString(),style: TextStyle(fontSize: 15.0),));
    }
 }
}

class A{
  void x(){
    print("A fonksiyonu");
  }

  }

  class B extends A{
  x();
  }