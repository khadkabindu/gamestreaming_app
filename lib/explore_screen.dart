import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_gamestreaming_app/recommended_videos_card.dart';

class ExploreScreen extends StatelessWidget {
  List items = [
    "images/dwgvst1.jpg",
    "images/MW_S4_TwitchDrop_Tout.jpg",
    "images/AGB_Twitch_Drop_2.jpg",
    "images/phreakandkode.jpg"
  ];

  List<String> title = [
    "T1 vs DWG - LCK Spring...",
    "Toxic Shlok vs SomeSham",
    "Rebel vs Rock - Nightstress...",
    "Me vs me - LCK Spring..."
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  "Discover",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),
                CarouselSlider(
                  items: items
                      .map((e) => Column(
                    children: [
                      Expanded(
                        child: Container(
                          height: 300,
                          width: 265,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(e), fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 13,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                "images/istockphoto-1218726670-612x612.jpg"),
                            radius: 15,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title[0],
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "T1 Faker",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "League of Legends",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),

                    ],
                  ))
                      .toList(),
                  options: CarouselOptions(
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "RECOMMENDED VIDEOS",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                      size: 15,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),

                RecommendedVideoCard(),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "YOUR CATEGORIES",
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
      )
    );
  }
}
