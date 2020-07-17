import 'package:flutter/material.dart';
import 'package:gallery_app/Components/Homescreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gallery_app/Components/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallery App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Splash(),
      ),
    );
  }
}
