import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyHomaPage());
}

class MyHomaPage extends StatefulWidget{
  @override
  _MyHomePage createState() => _MyHomePage();
   }

class _MyHomePage extends State<MyHomaPage> {
  final List<String> liste=['ali','demir',"ahmet",'veli',"kemal"];
  String adi="";
  int sayi=0;

  Widget fonk(){
   return Expanded(
      child: ListView.builder(
        itemCount: liste.length,
        itemBuilder: (BuildContext context, int index) {
          sayi=index;
          return Text(liste[index],style: TextStyle(fontSize: 30.0),);
        },),
    );
  }
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter"),
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.amberAccent,
        body: Column(
          children: [
            fonk(),
            Text(sayi.toString(),style: TextStyle(fontSize: 30.0),),
            RaisedButton(
              color: Colors.deepOrange,
              child: Text("Liste",style: TextStyle(fontSize: 30.0),),
              onPressed: (){
               },
            ),
          ],
        ),
      ),
    );
  }
}