import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import './buton.dart';

void main() {
  runApp(DrumMachine1());
}

class DrumMachine1 extends StatelessWidget {
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
  void sesCal(String sarki) {
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
                  child: FlatButton(
                    padding: EdgeInsets.only(bottom: 10),
                    color: Colors.black,
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
                    padding: EdgeInsets.only(left: 10, bottom: 10),
                    color: Colors.black,
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
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RaisedButon1(oynatici: oynatici),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RaisedButon1(oynatici: oynatici),
                ),
              ],
            ),
          ),
          Expanded(
            child: Wrap(
              alignment: WrapAlignment.end,
              children: [
                Icon(
                  Icons.timer,
                  size: 75,
                ),
                Icon(
                  Icons.timer,
                  size: 75,
                ),
                Icon(
                  Icons.timer,
                  size: 75,
                ),
                Icon(
                  Icons.timer,
                  size: 75,
                ),
                Icon(
                  Icons.timer,
                  size: 75,
                ),
                Icon(
                  Icons.timer,
                  size: 75,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  FlatButton buildDrumPad(String ses, Color renk) {
    return FlatButton(
      padding: EdgeInsets.all(8),
      color: Colors.black,
      onPressed: () {
        sesCal(ses);
      },
      child: Container(
        color: renk,
      ),
    );
  }
}
