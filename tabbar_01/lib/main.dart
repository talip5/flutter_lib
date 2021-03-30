import 'package:flutter/material.dart';

void main() {
  runApp(TabBar01());
}

class TabBar01 extends StatefulWidget {
  @override
  _TabBar01State createState() => _TabBar01State();
}

class _TabBar01State extends State<TabBar01> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Başlık'),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Cat',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                Tab(text: "Dog"),
                Tab(text: "Rabbit"),
                Tab(
                  icon: Icon(
                    Icons.directions_bike_outlined,
                    size: 70.0,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('Page1'),
              ),
              Center(
                child: Text('Page2'),
              ),
              Center(
                child: Text('Page3'),
              ),
              Icon(
                Icons.directions_bike,
                size: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
