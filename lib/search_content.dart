import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
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
                        ? Container(
                            child: GestureDetector(
                              onTap: () {
                                _controller.clear();
                              },
                              child: Icon(
                                Icons.clear,
                                size: 16,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey, shape: BoxShape.circle),
                            width: 20,
                          )
                        : null,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          SearchContent(),
        ],
      ),
    ));
  }
}

class SearchContent extends StatefulWidget {
  @override
  _SearchContentState createState() => _SearchContentState();
}

class _SearchContentState extends State<SearchContent> with TickerProviderStateMixin{
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
      ],
    );
  }
}
