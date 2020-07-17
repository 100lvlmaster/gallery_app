import 'package:flutter/material.dart';
import 'package:gallery_app/Components/Homescreen.dart';
import 'dart:async';
import 'IntroScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<Splash> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Homescreen()));
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => IntroScreen()));
    }
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      checkFirstSeen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset(
        'assets/gallery_icon.png',
        scale: 3,
      )),
    );
  }
}
