import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Detail")),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Detail Sayfası",style: TextStyle(fontSize: 30.0),),
            RaisedButton(
              child: Text("Bu sayfayı kapat"),
              color: Colors.greenAccent,
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    )
    );
  }
}