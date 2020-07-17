import 'package:flutter/material.dart';
import 'Homescreen.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Gallery App",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40),
            ),
            Text(
              '''Shows user info
            \n and
            \n Shows Fetched Images
            ''',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(8),
              ),
              child: FlatButton(
                child: Text(
                  'Start',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Homescreen()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
