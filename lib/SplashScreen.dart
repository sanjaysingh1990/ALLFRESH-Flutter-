import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/splashbackground.jpg"),
            fit: BoxFit.cover,
          ),

        ),
        child: new Center(
          child: new Text(
            "ALL FRESH",
            style: new TextStyle(fontSize:40.0,
                color: const Color(0xFFFFFFFF),
                fontWeight: FontWeight.w300,
                fontFamily: "Merriweather"),
          ),
        ),
      ),
    );
  }
}