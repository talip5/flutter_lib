import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firecloudread/prudectItem.dart';
import 'package:firecloudread/addProduct.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'homePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 30),
                    child: Icon(
                      Icons.list,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 30),
                    child: Text(
                      "Drawer",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.orangeAccent,
              ),
              title: Text(
                "Home Page",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(HomePage.routeName);
              },
            ),
            Divider(
              height: 10,
              color: Colors.black,
              indent: 65,
            ),
            ListTile(
              leading: Icon(
                Icons.add_box,
                color: Colors.orangeAccent,
              ),
              title: Text(
                "Add Gadgets ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(AddUser.routeName);
              },
            ),
            Divider(
              height: 10,
              indent: 65,
              color: Colors.black,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("GADGETS LIST"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.filter_b_and_w,
              color: Colors.white,
            ),
            onPressed: () {
              print("AppBar");
            },
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("products").snapshots(),
        builder: (context, snapshot) {
          return !snapshot.hasData
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
            itemCount: snapshot.data.docs.length,
            itemBuilder: (context, index) {
              DocumentSnapshot data = snapshot.data.docs[index];
              //return Text(data.get("productName")+data.get("productPrice"),style: TextStyle(fontSize: 25.0),);
              return ProductItem(
                productName: data.get("productName"),
                productPrice: data.get("productPrice"),
                isFavourite: data.get("isFavourite"),
                documentSnapshot: data,
                id: data.id,
              );
                 }
              );
          },
          ),
    );
  }
}