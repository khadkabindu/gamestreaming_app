import 'package:flutter/material.dart';

class RecommendedVideoCard extends StatelessWidget {

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
                          image: AssetImage(
                              "images/vod-474785229-offset-11390-preview.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 5,
                      child: Container(
                        height: 18,
                        width: 30,
                        child: Text(
                          "Live",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.red,
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
                          backgroundImage:
                          AssetImage("images/LCK_2018_logo.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "KT vs SB - T1 vs GRIFFIN",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "LCK Globals",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "League of Legends",
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
                              style:
                              TextStyle(fontSize: 10, color: Colors.white),
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
                              style:
                              TextStyle(fontSize: 10, color: Colors.white),
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
                              style:
                              TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),

              ],
            ),
            SizedBox(width: 20,),
          ],
        );
      },

      ),
    );
  }
}
