import 'package:flutter/material.dart';
import 'package:gallery_app/Components/PhotoGrid.dart';
import 'package:gallery_app/Components/UserList.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 10,
                  child: _selectedIndex == 1 ? UserList() : PhotoGrid()),
              Expanded(
                flex: 1,
                child: BottomNavigationBar(
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.photo),
                      title: Text('Photos'),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.contacts),
                      title: Text("UserList"),
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  selectedItemColor: Colors.blue,
                  onTap: _onItemTapped,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
