import 'package:flutter/material.dart';

class Detail extends StatefulWidget {

  String txtIsim;
  String txtSoyisim;

  Detail({this.txtIsim, this.txtSoyisim});

  @override
  State<StatefulWidget> createState() => _DetailState();
}

class _DetailState extends State<Detail> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detay Sayfası"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Merhaba"),
            Text("${widget.txtIsim}"),
            Text("${widget.txtSoyisim}"),
            Text("Hoşgeldin"),
            RaisedButton(
              child: Text("Bu Sayfayı Kapat"),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}