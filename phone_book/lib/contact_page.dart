import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phone_book/add_contact_page.dart';
import 'package:phone_book/model/contact.dart';
import 'package:image_picker/image_picker.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  File _file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Book"),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(_file==null ? "assets/images/ata5.jpg" : _file.path),
          Positioned(
            bottom: 18,
            right: 8,
            child: IconButton(
              onPressed: getFile,
              icon: Icon(Icons.camera_alt),
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  void getFile() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _file = image;
    });
  }
}
