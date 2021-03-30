import 'package:flutter/material.dart';
import './page2.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.cyan,
        primaryColor: Colors.yellow,
        accentColor: Colors.blue,
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.green)),
      ),
      home: Page1()));
}

class Page1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Page1State();
  }
}

class _Page1State extends State {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter',style:TextStyle(fontSize: 30.0),),
        ),
        backgroundColor: Colors.deepPurple,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Page1",
              style: TextStyle(fontSize: 35.0),
            ),
            Container(
              width: 200,
              height: 200,
              color: Theme.of(context).accentColor,
            ),
            RaisedButton(
              child: Text("Yeni Sayfaya Git"),
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page2()));
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
