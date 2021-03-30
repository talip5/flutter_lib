import 'package:flutter/material.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
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
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final List<String> entries = ['Flutter','dart','android'];
  final List<int> colorCodes = [600];
  final List<Color> colors5 =[Colors.blue,Colors.red,Colors.green];


  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  Color renk(){
    return Colors.yellow;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: entries.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                      Container(
                      height: 50,
                      color:colors5[index],
                      //color: Colors.amber[colorCodes[index]],
                      child:Center(child: Text('Entry ${entries[index]}')),
                    ),
                        SizedBox(
                          height: 10.0,
                          width: 450.0,
                          child: Container(
                            height: 10,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    );
                  }
              ),
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
