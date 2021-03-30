import 'package:flutter/material.dart';
import 'dart:async';

import '../routes/fadeInFadeOutRoute.dart';
import 'info.dart';

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);
  @override
  _State createState() => new _State();
}

class _State extends State<Splash> {
  Duration duration = const Duration(seconds: 3);

  startTimeout() {
    return new Timer(duration, handleTimeout);
  }

  void handleTimeout() {
    Navigator.pop(context);
    Navigator.push(
        context, FadeInFadeOutRoute(builder: (context) => Info()));
  }

  initState() {
    super.initState();
    this.startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
        ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/ata7.jpg"),
          fit: BoxFit.cover,
        )
      ),
    ),
    );
  }
  dispose() {
    super.dispose();
  }
}
