import 'package:flutter/material.dart';
import './dispose.dart';
void main() {
  runApp(MaterialApp(
    title: 'app',
    home:HomePage(),
  ));
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    int a=100;
    print(a);
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    print('built');
    return Scaffold(
        appBar: AppBar(
          title: Text('appbar'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Buton'),
            color: Colors.blue,
            onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder:(context)=>Route2()));
            },
          ),
        ),
        backgroundColor: Colors.amber,
    );
  }
}
