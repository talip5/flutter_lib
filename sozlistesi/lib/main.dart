import 'package:flutter/material.dart';
import 'package:sozlistesi/models/liste.dart';
import 'package:sozlistesi/models/students.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text('Studends'),
        ),
        body:MyHomePage(),
    ),
  ),
  );
}


class MyHomePage extends StatefulWidget {
Liste liste=Liste();
   @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
     return Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: widget.liste.studends.length,
                  itemBuilder: (BuildContext context,int index){
                  return ListTile(
                    title: Text(widget.liste.studends[index].isim+"   "+widget.liste.studends[index].soyad),
                  );
                  }),
            ),
            Text(widget.liste.studends.length.toString(),style: TextStyle(fontSize: 30.0),),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      );
  }
}
