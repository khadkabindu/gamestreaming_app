import 'package:flutter/material.dart';
import 'package:flutter_gamestreaming_app/search_content.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchField()));
          },
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
