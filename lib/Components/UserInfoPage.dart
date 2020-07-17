import 'package:flutter/material.dart';
import 'package:gallery_app/Components/Homescreen.dart';
import 'package:gallery_app/Models/UserInfoModel.dart';

import 'package:gallery_app/Models/PhotoInfoModel.dart';

class ShowUserInfo extends StatelessWidget {
  ShowUserInfo({
    @required this.username,
    @required this.name,
    @required this.email,
    @required this.address,
    @required this.phone,
    @required this.website,
    @required this.company,
  });
  final List<PhotoInfoModel> list = List();
  final String username;
  final String email;
  final String name;
  final Address address;
  final String phone;
  final String website;
  final Company company;
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
            Text("UserInfo"),
            SizedBox(width: 10)
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Icon(
                          Icons.supervised_user_circle,
                          size: 80,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        '''Username: $username 
                      \n\n Name: $name 
                      \n Email: $email
                      \n Address: 
                      \n Street: ${address.street}, 
                      \n Suite: ${address.suite}, 
                      \n City: ${address.city} 
                      \n Zipcode: ${address.zipcode}
                      \n Co-orditnates:
                      \n\t\t Latitude: ${address.geo.lat} 
                      \n\t\t Longitude: ${address.geo.lng} 
                      \n Contact: $phone
                      \n Company Name: ${company.name},
                      \n motto:${company.catchPhrase} 
                      \n bs: ${company.bs}
                      \n Website : $website''',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          letterSpacing: 2,
                        ),
                      ),
                      Text(""),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
