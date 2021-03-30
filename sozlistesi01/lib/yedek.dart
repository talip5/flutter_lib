import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool checkedValue = true;
  bool checkedValue1 = true;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Wrap(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              Transform.scale(
                scale: 1.3,
                child: Checkbox(value: checkedValue, onChanged: (value) {
                  setState(() {
                    checkedValue=value;
                  });
                }),
              ),
              Text(
                "Kerem Can",
                style: TextStyle(fontSize: 30.0),
              )
            ],
          ),
          CheckboxListTile(
            title: Text("Ahmet Çelik",style: TextStyle(fontSize: 30.0),),
            value: checkedValue,
            onChanged:(newValue){
              setState(() {
                checkedValue=newValue;
              });
            },
            activeColor: Colors.amber,
            controlAffinity: ListTileControlAffinity.leading,
          ),
          CheckboxListTile(
            title: Text("Temel Taş",style: TextStyle(fontSize: 30.0),),
            value: checkedValue,
            onChanged:(newValue){
              setState(() {
                checkedValue=newValue;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          CheckboxListTile(
            title: Text("Temel Taş",style: TextStyle(fontSize: 30.0),),
            value: checkedValue,
            onChanged:(newValue){
              setState(() {
                checkedValue=newValue;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          CheckboxListTile(
            title: Text("Temel Taş",style: TextStyle(fontSize: 30.0),),
            value: checkedValue,
            onChanged:(newValue){
              setState(() {
                checkedValue=newValue;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          CheckboxListTile(
            title: Text("Temel Taş",style: TextStyle(fontSize: 30.0),),
            value: checkedValue,
            onChanged:(newValue){
              setState(() {
                checkedValue=newValue;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          CheckboxListTile(
            title: Text("Temel Taş",style: TextStyle(fontSize: 30.0),),
            value: checkedValue,
            onChanged:(newValue){
              setState(() {
                checkedValue=newValue;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          CheckboxListTile(
            title: Text("Temel Taş",style: TextStyle(fontSize: 30.0),),
            value: checkedValue,
            onChanged:(newValue){
              setState(() {
                checkedValue=newValue;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          CheckboxListTile(
            title: Text("Temel Taş",style: TextStyle(fontSize: 30.0),),
            value: checkedValue,
            onChanged:(newValue){
              setState(() {
                checkedValue=newValue;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          CheckboxListTile(
            title: Text("Temel Taş",style: TextStyle(fontSize: 30.0),),
            value: checkedValue,
            onChanged:(newValue){
              setState(() {
                checkedValue=newValue;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          CheckboxListTile(
            title: Text("Temel Taş",style: TextStyle(fontSize: 30.0),),
            value: checkedValue,
            onChanged:(newValue){
              setState(() {
                checkedValue=newValue;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          CheckboxListTile(
            title: Text("Temel Taş",style: TextStyle(fontSize: 30.0),),
            value: checkedValue,
            onChanged:(newValue){
              setState(() {
                checkedValue=newValue;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          CheckboxListTile(
            title: Text("Temel Taş",style: TextStyle(fontSize: 30.0),),
            value: checkedValue,
            onChanged:(newValue){
              setState(() {
                checkedValue=newValue;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          CheckboxListTile(
            title: Text("Temel Taş",style: TextStyle(fontSize: 30.0),),
            value: checkedValue,
            onChanged:(newValue){
              setState(() {
                checkedValue=newValue;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          CheckboxListTile(
            title: Text("Temel Taş",style: TextStyle(fontSize: 30.0),),
            value: checkedValue,
            onChanged:(newValue){
              setState(() {
                checkedValue=newValue;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          Text('Ali Çalışkan',style: TextStyle(fontSize: 30.0), ),
        ],
      ),
    );
  }
}
