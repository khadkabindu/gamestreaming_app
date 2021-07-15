import 'package:flutter/material.dart';
import 'package:flutter_gamestreaming_app/recommended_videos_card.dart';

import 'channel_list.dart';

class SearchField extends StatefulWidget {
  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  TextEditingController _controller = TextEditingController();

  bool category = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 18,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Container(
                    width: 344,
                    child: TextField(
                      controller: _controller,
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Colors.grey
                        ),
                        suffixIcon: _controller.text.isNotEmpty
                            ? GestureDetector(
                              onTap: () {
                                _controller.clear();
                              },
                              child: Icon(
                                Icons.clear,
                                size: 16,
                                color: Colors.white,
                              ),
                            )
                            : null,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              _controller.text == "league of legends"
                  ? SearchContent()
                  : Container(
                      height: 0,
                      width: 0,
                    )
            ],
          ),
        ],
      ),
    ));
  }
}

class SearchContent extends StatefulWidget {
  @override
  _SearchContentState createState() => _SearchContentState();
}

class _SearchContentState extends State<SearchContent>
    with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tabController,
          isScrollable: true,
          labelColor: Colors.white,
          unselectedLabelColor: Color(0xff3c4046),
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.grey,
          tabs: [
            Text("  Top  "),
            Text("  Channel  "),
            Text("  Categories  "),
            Text("  Past Videos  ")
          ],
        ),
        Container(
          height: 0.4,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[50],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "CHANNEL",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 15,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ChannelList(
                imagePath: 'images/LCK_2018_logo.png',
                channelName: "LCK Global",
                category: "League of Legends",
                followers: "255.8",
              ),
              SizedBox(
                height: 20,
              ),
              ChannelList(
                  imagePath: "images/t1logo.jpg",
                  channelName: "T1",
                  category: "League of Legends",
                  followers: "116.34"),
              SizedBox(
                height: 25,
              ),
              Text(
                "PEOPLE SEARCHING ALSO WATCHED",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              RecommendedVideoCard(),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "CATEGORIES",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 15,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
