import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.lime,
      title: 'Flutter',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(

                  child: Center(
                      child: Text(
                'Bayramınız Kutlu Olsun',
                style: TextStyle(fontSize: 30.0, color: Colors.black),
              ))),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                          'https://www.sekercikuruyemis.com/image/cache/sekerci/urunler/kent-seker-500x500.jpg'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
