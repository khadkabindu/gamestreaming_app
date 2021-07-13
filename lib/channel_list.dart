import 'package:flutter/material.dart';

class ChannelList extends StatelessWidget {
  final String imagePath;
  final String channelName;
  final String category;

  final String followers;

  const ChannelList(
      {Key key,
        @required this.imagePath,
        @required this.channelName,
        @required this.category,
        @required this.followers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 47,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(imagePath),
        ),
        SizedBox(
          width: 13,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  channelName,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 13,
                ),
                Icon(
                  Icons.verified,
                  color: Colors.red,
                  size: 16,
                )
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              category,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "${followers}K Followers",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }
}