import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import './ses.dart';
void main() {
  runApp(DrumMachine1());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  void sesCal(String sarki){
    oynatici.play('$sarki.wav');
  }
  final oynatici = AudioCache();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildDrumPad('bongo',Colors.amber),
                ),
                Expanded(
                  child: buildDrumPad('bip',Colors.red),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.only(bottom: 10),color: Colors.black,
                    onPressed: () {
                      sesCal('clap1');
                    },
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.only(left: 10,bottom: 10),color: Colors.black,
                    onPressed: () {
                      sesCal('clap2');
                    },
                    child: Container(
                      color: Colors.brown,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.only(bottom: 10),color: Colors.black,
                    onPressed: () {
                      sesCal('clap3');
                    },
                    child: Container(
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.only(left: 10,bottom: 10),color: Colors.black,
                    onPressed: () {
                      sesCal('crash');
                    },
                    child: Container(
                      color: Colors.lime,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.only(bottom: 10),color: Colors.black,
                    onPressed: () {
                      sesCal('how');
                    },
                    child: Container(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.only(left: 10,bottom: 10),color: Colors.black,
                    onPressed: () {
                      sesCal('oobah');
                    },
                    child: Container(
                      color: Colors.cyan,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  FlatButton buildDrumPad(String ses,Color renk) {
    return FlatButton(
                  padding: EdgeInsets.all(8),color: Colors.black,
                  onPressed: () {
                    sesCal(ses);
                    },
                  child: Container(
                    color: renk,
                  ),
                );
  }
}
