import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.brown,
          appBar: AppBar(
            backgroundColor: Colors.brown[300],
            title: Text(
              'Flutter',
              style: TextStyle(color: Colors.black, fontSize: 30.0),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 108,
                  backgroundColor: Colors.brown[900],
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/kahve1.jpg'),
                  ),
                  //backgroundColor: Colors.redAccent,
                ),
                Text('Flutter Kahvecisi',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 45.0,
                        fontFamily: 'Satisfy')),
                //Image.asset('assets/images/kahve.jpg'),
                Text(
                  'Dart Kahvecisi',
                  style: GoogleFonts.satisfy(fontSize: 45.0),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 45.0),
                    child: Divider(height: 30.0,color: Colors.black,)),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                  color: Colors.brown[900],
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 25,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Mail adresi',
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 45.0),
                  color: Colors.brown[900],
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Telefon Numarası',
                      style: GoogleFonts.satisfy(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
