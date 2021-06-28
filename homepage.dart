import 'package:flutter/material.dart';
import 'body.dart';
import 'constants.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  List<Widget> pageList = <Widget>[
    Body(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[0],
      backgroundColor: color1,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: color1,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.40),
        onTap: (value) {
          setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            label: 'Groove',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'Music',
            icon: Icon(Icons.music_note),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
