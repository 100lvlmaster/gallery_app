import 'package:flutter/material.dart';
import 'package:gallery_app/Components/Homescreen.dart';
import 'package:gallery_app/Models/PhotoInfoModel.dart';

class PhotoInfo extends StatelessWidget {
  PhotoInfo({
    @required this.title,
    @required this.url,
  });
  final List<PhotoInfoModel> list = List();
  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Homescreen()))
              },
              child: Container(
                width: 50,
                child: Icon(Icons.arrow_back_ios),
              ),
            ),
            Text('PhotoInfo'),
            SizedBox(width: 20)
          ],
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 6,
              child: Image.network(url),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
