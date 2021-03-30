import 'package:flutter/material.dart';

void main(){
  runApp(MyHomaPage());
}

class MyHomaPage extends StatefulWidget{
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomaPage>{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "flutter",
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

Widget MyHome() {
  return Scaffold(
    appBar: AppBar(
      title: Text("FLUTTER",style: TextStyle(fontSize: 25.0),),
    ),
    backgroundColor: Colors.amberAccent,
    body: Column(
      children: [
        Expanded(
          child: SizedBox(
            width: double.infinity ,
            height: double.infinity,
            child:RaisedButton(
              child: Text("Buton1",style: TextStyle(fontSize: 25.0),),
              color: Colors.green,
              onPressed:(){
                print("Buton1");
              },
            ),
          ),
        ),
        RaisedButton(
          child: Text("Buton2",style: TextStyle(fontSize: 25.0),),
          color: Colors.deepOrange,
          onPressed:(){
            print("Buton2");
          },
        ),
      ],
    ),
  );
}



