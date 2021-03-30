import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_listtile_demo/model/listtilemodel.dart';
void main(){
  runApp(MaterialApp(
    home: CheckBoxListTileDemo(
    ),
  ));
}
class CheckBoxListTileDemo extends StatefulWidget {
  @override
  CheckBoxListTileDemoState createState() => new CheckBoxListTileDemoState();
}

class CheckBoxListTileDemoState extends State<CheckBoxListTileDemo> {
  List<CheckBoxListTileModel> checkBoxListTileModel =
  CheckBoxListTileModel.getUsers();
  String baslik='CheckBox ListTile Demo35';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: new Text(baslik,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: new ListView.builder(
          itemCount: checkBoxListTileModel.length,
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              child: new Container(
                padding: new EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    new CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.pink[300],
                        dense: true,
                        //font change
                        title: new Text(
                          checkBoxListTileModel[index].title,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5),
                        ),
                        value: checkBoxListTileModel[index].isCheck,
                        secondary: Container(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            checkBoxListTileModel[index].img,
                            fit: BoxFit.cover,
                          ),
                        ),
                        onChanged: (bool val) {
                          itemChange(val, index);
                          setState(() {
                            baslik=checkBoxListTileModel[index].userId.toString();
                          });
                        }
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  void itemChange(bool val, int index) {
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
  }
}
class CheckBoxListTileModel {
  int userId;
  String img;
  String title;
  bool isCheck;
  bool check1=true;
  CheckBoxListTileModel({this.userId, this.img, this.title, this.isCheck});

  List<CheckBoxListTileModel> getUsers(){
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
          userId: 1,
          img: 'assets/images/android_img.png',
          title: "Android",
          isCheck: true),
      CheckBoxListTileModel(
          userId: 2,
          img: 'assets/images/flutter.jpeg',
          title: "Flutter",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 3,
          img: 'assets/images/ios_img.webp',
          title: "IOS",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 4,
          img: 'assets/images/php_img.png',
          title: "PHP",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 5,
          img: 'assets/images/node_img.png',
          title: "Node",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 6,
          img: 'assets/images/android_img.png',
          title: "Android",
          isCheck: true),
      CheckBoxListTileModel(
          userId: 7,
          img: 'assets/images/flutter.jpeg',
          title: "Flutter",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 8,
          img: 'assets/images/ios_img.webp',
          title: "IOS",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 9,
          img: 'assets/images/php_img.png',
          title: "PHP",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 10,
          img: 'assets/images/node_img.png',
          title: "Node",
          isCheck: false)
    ];
  }
}