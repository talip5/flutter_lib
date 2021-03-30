import 'package:flutter/material.dart';
import 'package:tabbar/nestedTabBarView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
TabController _tabController;
@override
void initState(){
  super.initState();
  _tabController=new TabController(length: 3, vsync: this);
}
@override
void dispose(){
  super.dispose();
  _tabController.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: _tabController,
          indicatorColor: Colors.teal,
          labelColor: Colors.teal,
          unselectedLabelColor: Colors.black54,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.email),
            ),
            Tab(
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          NestedTabBar(),
          Center(
            child: Text("Email"),
          ),
          Center(
            child: Text("Setting"),
          ),
        ],
        controller: _tabController,
      ),
    );
  }
}
