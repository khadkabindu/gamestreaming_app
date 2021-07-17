import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'browse_screen.dart';
import 'explore_screen.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _widgetOption = <Widget>[
    ExploreScreen(),
    Center(
      child: Text(
        "Favorites",
        style: TextStyle(color: Colors.white),
      ),
    ),
    BrowseScreen(),

    Center(
      child: Text(
        "Profile",
        style: TextStyle(color: Colors.white),
      ),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _widgetOption.elementAt(_selectedIndex),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color(0xff222222)
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore_outlined,
                color: Colors.white,

              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_outline_sharp,
                  color: Colors.white,
                ),
                label: ""),
            BottomNavigationBarItem(
              icon: FaIcon(
                Icons.web_asset,
                color: Colors.white,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outlined,
                  color: Colors.white,
                ),
                label: ""),
          ],
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          backgroundColor: Colors.grey,
        ),
      ),
    );
  }
}