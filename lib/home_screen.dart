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

  List<String> images = [
    "images/Call of Duty_ Mobile.jpg",
    "images/unnamedleague.jpg",
    "images/apex-legends.jpg",
    "images/fortnite---button-1520296499714.jpg"
  ];

  List<String> names = [
    "Call of Duty",
    "League of\nLegends",
    "Apex Legends",
    "Fortnite"
  ];

  List<String> views= ["256.21K", "41.3K", "10.1K", "12.32K"];

  List<String> followers = ["10.2 M", "4 M","92 M","22.1 M"];

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
            SizedBox(
              height: 25,
            ),
            Flexible(
              child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 170,
                              width: 120,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // color: Colors.blue,
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  names[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      letterSpacing: 1),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye_sharp,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      views[index],
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 45,
                                    ),
                                    Icon(
                                      Icons.people,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Text(
                                      "  ${followers[index]}",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 74,
                                      child: RaisedButton(
                                        onPressed: () {},
                                        color: Color(0xff2a2626),
                                        child: Text(
                                          "Export",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 74,
                                      child: RaisedButton(
                                        onPressed: () {},
                                        color: Color(0xff2a2626),
                                        child: Text(
                                          "MOBA",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
