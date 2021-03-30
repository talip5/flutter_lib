import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';


class RaisedButon1 extends StatelessWidget {
  const RaisedButon1({
    Key key,
    @required this.oynatici,
  }) : super(key: key);

  final AudioCache oynatici;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        oynatici.play('bip.wav');
      },
      color: Colors.lime,
      child: Container(
          alignment: Alignment.center,
          child: Text(
            'Play',
            style: TextStyle(fontSize: 25.0),
          )),
    );
  }
}
