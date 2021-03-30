import 'package:flutter/material.dart';

class Page2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Page2State();
  }
}

class _Page2State extends State{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text('Dart',style:TextStyle(fontSize: 30.0),),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Page2",style: TextStyle(fontSize: 35.0)),
            RaisedButton(
              child: Text("Sayfayı Kapatınız"),
              onPressed: (){
                setState(() {
                  Navigator.pop(context);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

