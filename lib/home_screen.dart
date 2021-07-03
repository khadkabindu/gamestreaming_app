import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.connected_tv,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.notifications_none_rounded,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Browser",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 250,
              child: TabBar(
                controller: tabController,
                tabs: [
                  Text("Categories"),
                  Text("Live Channels"),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 170,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/unnamedleague.jpg"),
                  fit: BoxFit.cover,
                )
              ),
              // color: Colors.blue,

            ),
          ],
        ),
      ),
    );
  }
}
