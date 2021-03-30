import 'package:flutter/material.dart';
import 'package:resim_04/models/images.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  List<Resimler> resimler=[Resimler("ata1.jpg"),
    Resimler("ata2.jpg"),
    Resimler("ata3.jpg"),
    Resimler("ata4.jpg"),
    Resimler("ata5.jpg"),
    Resimler("ata6.jpg"),
  ];
  int no;
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "M",
     home: Scaffold(
       appBar: AppBar(title: Text("Images"),
       ),
       body:ListView.builder(
         itemCount: resimler.length,
           itemBuilder: (BuildContext context,int index){
           no=index;
           return Column(
             children: <Widget>[
            _buildContainer(),
             ],
           );
           }),
     ),
   );
  }
  Widget _buildContainer() {
    return Material(
      //color: Colors.blue,
      child: InkWell(
        onTap: () => print("Container pressed   "+no.toString()), // handle your onTap here
        child: Container(
          margin: EdgeInsets.all(10),
          child: Image.asset("assets/images/"+resimler[no].resim),
        ),),
    );
}
}

class ResimImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage=AssetImage("assets/images/ata1.jpg");
    Image image=Image(image: assetImage);
    return Container(child: image,width: 400,height: 200,);
  }
}