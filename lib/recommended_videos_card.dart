import 'package:flutter/material.dart';
// ignore: must_be_immutable

class RecommendedVideoCard extends StatelessWidget {
  List<String> images = [
    "images/vod-474785229-offset-11390-preview.jpg",
    "images/callofdutylive.jpg",
    "images/fortnitestreaming.jpg",
    "images/maxresdefault.jpg"
  ];

  List<String> logo = [
    "images/LCK_2018_logo.png",
    "images/t1logo.jpg",
    "images/LCK_2018_logo.png",
    "images/t1logo.jpg",
  ];

  List<String> streamersName = [
    "KT vs SB - T1 vs GRIFFIN",
    "xQcOw vs Trick2g",
    "AuronPlay vs  Rubius",
    "Myth vs Ninja"
  ];

  List<String> gameList = [
    "League of Legends",
    "Call of Duty",
    "Fortnite",
    "League of Legends"
  ];

  List<String> streamingTeam = ["LCK Globals", "T1", "LCK Globals", "T1"];


  List<String> views = [" 66.2K", " 44.1K", " 2K", " 11.6K"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 150,
                        width: 320,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        left: 5,
                        child: Row(
                          children: [
                            Container(
                              height: 18,
                              width: 30,
                              child: Center(
                                child: Text(
                                  "Live",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 210,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.white,
                                ),
                                Text(
                                  views[index],
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(logo[index]),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                streamersName[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                streamingTeam[index],
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                gameList[index],
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 45,
                          ),
                          Container(
                            height: 20,
                            width: 50,
                            color: Colors.grey[900],
                            child: Center(
                              child: Text(
                                "Export",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Container(
                            height: 20,
                            width: 40,
                            color: Colors.grey[900],
                            child: Center(
                              child: Text(
                                "MOBA",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Container(
                            height: 20,
                            width: 30,
                            color: Colors.grey[900],
                            child: Center(
                              child: Text(
                                "LCK",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
            ],
          );
        },
      ),
    );
  }
}
