import 'package:flutter/material.dart';
import './button.dart';
import './students.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.red[300],
        accentColor: Colors.green,
      ),
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page35'),
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
  List<Students> resimler = [
    Students('gulay-1', 'Gülay-1'),
    Students('gulay-2', 'Gülay-2'),
    Students('gulay-3', 'Gülay-3'),
    Students('gulay-4', 'Gülay-4')
  ];

  int _counter = 0;
  int resimNo = 1;
  int resimSayisi = 0;

  void resimArttir() {
    setState(() {
      if (resimSayisi < resimler.length - 1) {
        resimSayisi++;
      } else {
        resimSayisi = 0;
      }
    });
  }

  void resimAzalt() {
    setState(() {
      if (resimSayisi < resimler.length && resimSayisi > 0) {
        resimSayisi--;
      } else {
        resimSayisi = 0;
      }
    });
  }

  get onPressed => null;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          resimler[resimSayisi].baslik,
          style: TextStyle(fontSize: 30.0),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/gulay-1.png'),
                      fit: BoxFit.cover),
                ),
                child: Image.asset(
                  'assets/images/${resimler[resimSayisi].resim}.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: RaisedButton(
                      color: Colors.blue,
                      child: Text('Arttır'),
                      onPressed: resimArttir,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: RaisedButton(
                      color: Colors.green,
                      child: Text('Azalt'),
                      onPressed: resimAzalt,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        //child: Text('RESİM',style: TextStyle(fontSize: 30.0),),
      ),
    );
  }
}
