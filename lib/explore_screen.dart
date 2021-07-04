import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ExploreScreen extends StatelessWidget {
  List items = [
    "images/dwgvst1.jpg",
    "images/MW_S4_TwitchDrop_Tout.jpg",
    "images/AGB_Twitch_Drop_2.jpg",
    "images/phreakandkode.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
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
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
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
                                        image: AssetImage(e),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  "images/istockphoto-1218726670-612x612.jpg"),
                            )
                          ],
                        ))
                    .toList(),
                options: CarouselOptions(
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  scrollDirection: Axis.horizontal,
                ),)
          ],
        ),
      ),
    );
  }
}
