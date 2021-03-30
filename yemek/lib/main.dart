import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Yemek());
}

class Yemek extends StatefulWidget{
  @override
  _YemekState createState() => _YemekState();
}

class _YemekState extends State<Yemek>{
  int corbaNo=2;
  int yemekNo=2;
  int tatliNo=2;

  int corbaNoRandom;
  int yemekNoRandom;
  int tatliNoRandom;

  List<String> corbaText=['Çorba-1','Çorba-2','Çorba-3'];
  List<String> yemekText=['yemek-1','yemek-2','yemek-3'];
  List<String> tatliText=['tatlı-1','tatlı-2','tatlı-3'];

  void yemekCesitleri(){
    setState(() {
     corbaNoRandom=Random().nextInt(3)+1;
     if(corbaNoRandom==corbaNo){
       if(corbaNoRandom>=3) {
         corbaNoRandom = corbaNoRandom - 1;
       }
       else if(corbaNoRandom>=1){
         corbaNoRandom = corbaNoRandom + 1;
       }
     }
     yemekNoRandom=Random().nextInt(3)+1;
     if(yemekNoRandom==yemekNo){
       if(yemekNoRandom>=3) {
         yemekNoRandom = yemekNoRandom - 1;
       }
       else if(yemekNoRandom>=1){
         yemekNoRandom = yemekNoRandom + 1;
       }
     }
     tatliNoRandom=Random().nextInt(3)+1;
     if(tatliNoRandom==tatliNo){
       if(tatliNoRandom>=3) {
         tatliNoRandom = tatliNoRandom - 1;
       }
       else if(tatliNoRandom>=1){
         tatliNoRandom = tatliNoRandom + 1;
       }
     }
     corbaNo=corbaNoRandom;
     yemekNo=yemekNoRandom;
     tatliNo=tatliNoRandom;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle:true,
          title: Text('BUGÜN NE YESEM',style: TextStyle(color: Colors.black,fontSize:20 ),),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child:Column(
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: yemekCesitleri,
                    child: Image.asset('assets/images/corba-$corbaNo.jpg')),
              )),
              Text(corbaText[corbaNo-1],style: TextStyle(fontSize: 20),),
              Container(
                width: 200,
                child: Divider(
                  height: 5,
                  thickness: 2,
                  color: Colors.black,
                  indent: 10,
                  endIndent: 10,
                ),
              ),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: FlatButton(
                    highlightColor: Colors.white,
                    splashColor: Colors.white,
                    onPressed: yemekCesitleri,
                    child: Image.asset('assets/images/yemek-$yemekNo.jpg')),
              )),
              Text(yemekText[yemekNo-1],style: TextStyle(fontSize: 20),),
              Container(
                width: 200,
                child: Divider(
                  height: 5,
                  thickness: 2,
                  color: Colors.black,
                  indent: 10,
                  endIndent: 10,
                ),
              ),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: FlatButton(
                    highlightColor: Colors.white,
                    splashColor: Colors.white,
                    onPressed: yemekCesitleri,
                    child: Image.asset('assets/images/tatli-$tatliNo.jpg')),
              )),
              Text(tatliText[tatliNo-1],style: TextStyle(fontSize: 20),),
              Container(
                width: 200,
                child: Divider(
                  height: 5,
                  thickness: 2,
                  color: Colors.black,
                  indent: 10,
                  endIndent: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

