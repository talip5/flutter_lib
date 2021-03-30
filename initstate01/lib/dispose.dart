import 'package:flutter/material.dart';

class Route2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.green,
      child: RaisedButton(
        child: Text('Ana Sayfa'),
        color: Colors.red,
        onPressed: (){
          print('Ana Sayfa');
          Navigator.pop(context);       },
      ),
    );
  }
}
