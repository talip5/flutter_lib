import 'package:flutter/material.dart';
import 'package:text_center_center/screens/page1.dart';


class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
          appBar: AppBar(
            title: Text("Navigator2"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Center(
              child:Text("Page2",textDirection: TextDirection.ltr,style: TextStyle(fontSize: 25.0),) ,
            ),
              RaisedButton(
                child: Text("Page1'e git",style: TextStyle(fontSize: 25.0),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1()));
                },
              ),
              RaisedButton(
                child: Text("Sayfayı kapatınız",style: TextStyle(fontSize: 25.0),),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ],
          )
       )
    );
  }
}
