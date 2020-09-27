import 'package:dribble/BottomAppBar/AppBar/popular.dart';
import 'package:dribble/BottomAppBar/AppBar/recent.dart';
import 'package:dribble/OtherInsidePages/HeadingCircle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shorts extends StatefulWidget {
  @override
  _ShortsState createState() => _ShortsState();
}

class _ShortsState extends State<Shorts> {
  Color _color = Colors.grey[900];
  TabController _tabController;
  final _controller = ScrollController();
  final bool select = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Colors.white24,
        appBar: AppBar(
          backgroundColor: _color,
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              onPressed: null,
            )
          ],
          //controller: controller,
          leading: CircleAvatar(
            foregroundColor: _color,
            backgroundColor: _color,
            radius: 21.0,
            child: CircleAvatar(
              foregroundColor: _color,
              backgroundColor: _color,
              radius: 21.0,
              child: IconButton(
                splashColor: _color,
                highlightColor: _color,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HeadingCircle()));
                },
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          title: Text(
            'dribbble',
            style: TextStyle(fontFamily: 'Pacifico', color: Colors.white),
          ),
          centerTitle: true,
          //backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, kToolbarHeight),
            child: Container(
              alignment: Alignment.center,
              color: Colors.white,
              child: TabBar(
                indicatorColor: Colors.blue[900],
                labelPadding: EdgeInsets.all(5),
                //isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Text(
                        'Following',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    // text: "Following",
                  ),
                  Tab(
                    child: Container(
                      // padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Text(
                        'Popular',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    //text: "Popular",
                  ),
                  Tab(
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Text(
                        'Recent',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // text: "Recent",
                  )
                ],
                controller: _tabController,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Image.asset('assets/following.jpeg'),
            ),
            ListView(
              controller: _controller,
              children: [PopularPage()],
            ),
            ListView(
              controller: _controller,
              children: [RecentPage()],
            ),
          ],
        ),
      ),
    );
  }
}
