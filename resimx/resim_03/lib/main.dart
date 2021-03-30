import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "M",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/ata5.jpg'),width: 400.0,height: 200.0,
              ),
              ResimImageAsset(),
              //Image.asset('assets/images/ata1.jpg',width: 400,height: 200,),
             // Image.network("http://staffmobility.eu/sites/default/files/isewtweetbg.jpg",width: 400,height: 200,),
            ],
          ),
        ),
      ),
    );
  }
}

class ResimImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage=AssetImage("assets/images/ata10.jpg");
    Image image=Image(image: assetImage);
    return Container(child: image,width: 400,height: 200,);
  }
}