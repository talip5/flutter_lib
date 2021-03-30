import 'package:flutter/material.dart';
import 'package:resim_05/models/Resimler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State{
  ScrollController _scrollController=ScrollController();

  List<Resimler> resimler=[Resimler("ata1.jpg"),
    Resimler("ata2.jpg"),
    Resimler("ata3.jpg"),
    Resimler("ata4.jpg"),
    Resimler("ata5.jpg"),
    Resimler("ata6.jpg"),
  ];
  int counter=1;
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: "m",
    home: Scaffold(
      appBar: AppBar(title: Text("Images",style: TextStyle(fontSize: 25.0),),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Scrollbar(
              isAlwaysShown: true,
              controller: _scrollController,
              child: ListView.builder(
                controller: _scrollController,
                  itemCount: resimler.length,
                  itemBuilder: (BuildContext context,int index){
                    return RaisedButton(
                      onPressed: (){
                        setState(() {
                          print("index :"+index.toString());
                          if(counter<6) {
                            ++counter;
                          }
                          else{
                            counter=1;
                          }
                        });
                      },
                      child: Image.asset("assets/images/"+resimler[index].resim,cacheWidth: 400,cacheHeight: 200,),
                    );
                  }),
            ),
          )
        ],
      ),
    ),
  );
  }
}


