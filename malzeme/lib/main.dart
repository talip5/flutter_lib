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

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _controller1;
  TextEditingController _controller2;

  void initState() {
    super.initState();
    _controller1 = TextEditingController();
  }

  void dispose() {
    _controller1.dispose();
    super.dispose();
  }

  void initState1() {
    super.initState();
    _controller2 = TextEditingController();
    _controller2.text="ali";
  }

  void dispose1() {
    _controller2.dispose();
    super.dispose();
  }
  int _counter = 0;
  int carpma=0;
  double bolme=0;
  int a=0;
  String txt="";
  int txt_no=0;
  String fieldx="label";
  String alan2="";


  void artis() {
    setState(() {
       _counter++;
       carpma=_counter;
       alan2=_controller1.text;
    });
  }

  void bolme1(){
    setState(() {

         });
  }
  void carpmax(){
    String alan1=_controller1.text;
    int alan11=int.parse(alan1);
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
            TextField(
              controller: _controller1,
              //keyboardType: TextInputType.number,//keyboard with numbers only
// will appear to the screen
            decoration: InputDecoration(
              hintText: "Hint text sample",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  color: Colors.amber,
                  style: BorderStyle.solid,
                ),
              ),
            ),
              onSubmitted: (String value)  {
                setState(() {
                  txt=value;
                });
              },
            ),
            SizedBox(
              width: 200.0,
              height: 20.0,
            ),
            TextField(
              controller: _controller2,
              //keyboardType: TextInputType.number,//keyboard with numbers only
// will appear to the screen
              decoration: InputDecoration(
                //labelText: ("123455"),
              hintText: "Hint text sample",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.amber,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              /*onSubmitted: (String value)  {
                setState(() {
                  txt=value;
                });
              },*/
            ),
            Text(alan2,style: TextStyle(fontSize: 30),),

            Text(txt_no.toString(),style: TextStyle(fontSize: 30),),

            RaisedButton(
              child: Text('     Toplama     ', style: TextStyle(fontSize: 20)),
              onPressed: () {
                if (txt == "1") {
                  print("tamam35");
                  setState(() {
                    txt_no=1;
                  });
                   }
                else {
                  setState(() {
                    var myInt = int.parse(txt);
                    txt_no = myInt + 100;
                  });
                }
              }
            ),
            const SizedBox(height: 30),

            Text(carpma.toString(),style: TextStyle(fontSize: 30),),

            RaisedButton(
              onPressed: (artis),
            child: const Text('     Çarpma       ', style: TextStyle(fontSize: 20)),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
      );
  }
}
