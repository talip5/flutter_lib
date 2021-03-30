import 'package:flutter/material.dart';
import 'package:drawer/homoPage.dart';

void main() {
  runApp(MaterialApp(
    title: "Drawer",
    home: MyApp(),
  ));
  goster();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer35"),
      ),
      body: Center(child: Text("DRAWER"),),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header35'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                print("HomePage");
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}


void goster(){
  print("goster");
}
