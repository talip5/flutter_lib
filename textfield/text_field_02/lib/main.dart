import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  TextEditingController kilo = TextEditingController();
  TextEditingController boy = TextEditingController();
  double sonuc = 0;

  void hesapla() {
    setState(() {
      sonuc = double.parse(kilo.text) /
          (double.parse(boy.text) * double.parse(boy.text));
    });
  }

  @override
  Widget build(BuildContext context) {
    //kilo.text="75";
    //boy.text="1.74";

    return MaterialApp(
      title: "M",
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextField"),
        ),
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextField(
                enabled: false,
                //autofocus: true,
                focusNode: myFocusNode,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Kilo",
                ),
                controller: kilo,
                keyboardType: TextInputType.number,
              ),
              TextField(
                autofocus: true,
                style: TextStyle(height: 3.0, fontWeight: FontWeight.bold),
                cursorWidth: 5.0,
                //focusNode: myFocusNode,
                textAlign: TextAlign.center,
                controller: boy,
                keyboardType: TextInputType.number,
                //readOnly: true,
                obscureText: true,
              ),
              MaterialButton(
                color: Colors.greenAccent,
                child: Text("Giriş"),
                onPressed: () {
                  setState(() {});
                },
              ),
              MaterialButton(
                color: Colors.blue,
                child: Text("Hesapla"),
                onPressed: () {
                  hesapla();
                },
              ),
              Text("Sonuç : " + sonuc.toString()),
              TextField(
                  //autofocus: true,
                  //focusNode: myFocusNode,
                  ),
              FloatingActionButton(
                child: Icon(Icons.edit),
                onPressed: (){
                  myFocusNode.requestFocus();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
