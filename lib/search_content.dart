import 'package:flutter/material.dart';

class SearchContent extends StatefulWidget {
  @override
  _SearchContentState createState() => _SearchContentState();
}

class _SearchContentState extends State<SearchContent> {
  TextEditingController _controller = TextEditingController();

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
      body: Column(
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
                    suffixIcon: _controller.text.isNotEmpty
                        ? IconButton(
                            icon: Icon(Icons.clear, size: 16, color: Colors.white,),
                            onPressed: () {
                              _controller.clear();
                            },
                          )
                        : null,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
