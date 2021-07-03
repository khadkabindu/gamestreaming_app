import 'package:flutter/material.dart';
import 'package:flutter_gamestreaming_app/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

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
    HomeScreen(),
    Center(
      child: Text(
        "favorites",
        style: TextStyle(color: Colors.white),
      ),
    ),
    Center(
      child: Text(
        "Browse",
        style: TextStyle(color: Colors.white),
      ),
    ),
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
              icon: Icon(
                Icons.browser_not_supported,
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