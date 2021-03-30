import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text("Detail Sayfasına git"),
                color: Colors.amber,
                onPressed: (){
                  Navigator.pushNamed(context, "/detail");
                },
              ),
              RaisedButton(
                child: Text("Setting Sayfasına git"),
                color: Colors.amber,
                onPressed: (){
                  Navigator.pushNamed(context, "/setting");
                },
              ),
            ],
          ),
        )));
  }
}
