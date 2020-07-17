import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'UserInfoPage.dart';
import 'package:gallery_app/Models/UserInfoModel.dart';

import 'dart:convert';

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<UserInfoModel> list = List();
  var isLoading = false;

  _fetchData() async {
    setState(() {
      isLoading = true;
    });
    final response =
        await http.get("https://jsonplaceholder.typicode.com/users");
    if (response.statusCode == 200) {
      list = (json.decode(response.body) as List)
          .map((data) => UserInfoModel.fromJson(data))
          .toList();

      setState(() {
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load photos');
    }
  }

  void initState() {
    _fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Users')),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () => {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => ShowUserInfo(
                              username: list[index].username,
                              name: list[index].name,
                              email: list[index].email,
                              address: list[index].address,
                              website: list[index].website,
                              phone: list[index].phone,
                              company: list[index].company,
                            )))
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10.0),
                    title: Text(list[index].name),
                    leading: Icon(Icons.perm_contact_calendar),
                  ),
                );
              },
            ),
    );
  }
}
