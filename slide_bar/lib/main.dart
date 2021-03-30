import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  bool control=true;
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  double x5=30;
  double y5=10;
    Widget bar() {
    if (_counter == 10) {
      return Container(margin: const EdgeInsets.all(10.0),
        color: Colors.amber[600],
        width: 10,
        height: 40.0,);
    }
    if (_counter == 20) {
      return Container(margin: const EdgeInsets.all(10.0),
        color: Colors.amber[600],
        width: 20,
        height: 40.0,);
    }
    else{
      return Container(margin: const EdgeInsets.all(10.0),
        color: Colors.amber[600],
        width: 100,
        height: 40.0,);
    }
  }
  void _incrementCounter() {
    setState(() {
       _counter++;
    });
  }
void deger(){
    setState(() {
     y5+=10;
    });
}
Widget bar1() {
       if (_counter == 1) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      alignment: Alignment.topLeft,
      color: Colors.amber[600],
      width: 20,
      height: 40.0,
    );
  }
  else if(_counter==2){
    return Container(
      margin: const EdgeInsets.all(10.0),
      alignment: Alignment.topLeft,
      color: Colors.amber[600],
      width: 40,
      height: 40.0,
    );
  }
       else if(_counter==3){
         return Container(
           margin: const EdgeInsets.all(10.0),
           alignment: Alignment.topLeft,
           color: Colors.amber[600],
           width: 60,
           height: 40.0,
           child: Container(
             margin: const EdgeInsets.only(left:10.0),
             alignment: Alignment.topLeft,
             color: Colors.white,
             width: 10,
             height: 40.0,
           ),
         );
       }
       else if(_counter==4){
         return Container(
           margin: const EdgeInsets.all(10.0),
           alignment: Alignment.topLeft,
           color: Colors.amber[600],
           width: 80,
           height: 40.0,
         );
       }
       else if(_counter>=5){
         return Container(
           margin: const EdgeInsets.all(10.0),
           alignment: Alignment.topLeft,
           color: Colors.amber[600],
           width: 100,
           height: 40.0,
         );
       }
       else{
  return Container(
  margin: const EdgeInsets.all(10.0),
  alignment: Alignment.topLeft,
  color: Colors.amber[600],
  width: 5,
  height: 40.0,
  );
       }
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
              bar1(),
              ],
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
              child: Text("Azalt",style: TextStyle(fontSize: 30),),
              onPressed: (){
                setState(() {
                  _counter--;
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _incrementCounter();
            },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
