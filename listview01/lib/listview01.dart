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
      leading: new Icon(Icons.live_tv),
      title: const Text('SnapNews'),
      backgroundColor: Colors.red,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.help),
          onPressed: () {
            print("icon");
          },
        ),
      ],
    ),
    backgroundColor: Colors.amberAccent,
    body: Column(
      children: [
        Align(
          //alignment: Alignment.topRight,
        ),
        SizedBox(
          height: 10.0,
        ),
        SizedBox(
          width: 300.0,
          height: 100.0,
          child:Container(
            color: Colors.blueAccent,
            child: Align(
              alignment: Alignment.center,
              child: RaisedButton(
                child: Text("Buton1",style: TextStyle(fontSize: 25.0),),
                color: Colors.green,
                onPressed:(){
                  print("Buton1");
                },
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
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



