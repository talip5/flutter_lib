import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.amber,
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
          ),
          body: Column(
            children: [
              Expanded(flex: 3,
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.red[100],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.red[300],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Center(
                                    child: Text('Bölüm',style: TextStyle(fontSize: 30.0),),
                                  ),
                                  color: Colors.red[500],
                                ),
                              ),
                            ],
                          ),
                          color: Colors.brown[100],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.brown[300],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.brown[500],
                        ),
                      ),
                    ],
                  ),
                  color: Colors.redAccent,
                ),
              ),
              Expanded(
                flex: 2
                ,
                child: Container(
                  color: Colors.blue,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

