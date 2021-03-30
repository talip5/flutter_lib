import 'package:flutter/material.dart';
import 'package:navigator_text/screen/detail.dart';

void main() {
  runApp(MaterialApp(
    title: "home",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State {
  TextEditingController txtIsimCtrl = new TextEditingController();
  TextEditingController txtSoyisimCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: txtIsimCtrl,
                decoration: new InputDecoration(
                    hintText: "İsminizi Giriniz", labelText: "İsim"),
              ),
              TextField(
                controller: txtSoyisimCtrl,
                decoration: new InputDecoration(
                    hintText: "Soyisminizi Giriniz", labelText: "Soyisim"),
              ),
              RaisedButton(
                child: Text("Verileri Gönder"),
                color: Colors.blue,
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Detail(txtIsim: txtIsimCtrl.text,txtSoyisim: txtSoyisimCtrl.text,)),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}