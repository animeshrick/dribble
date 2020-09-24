import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HeadingCircle.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color iconColor = Colors.white;
  Color overallColor = Colors.grey[900];

  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 1: Shorts',
      style: optionStyle,
    ),
    Text(
      'Index 2: Activity',
      style: optionStyle,
    ),
    Text(
      'Index 3: Upload',
      style: optionStyle,
    ),
    Text(
      'Index 4: Messages',
      style: optionStyle,
    ),
    Text(
      'Index 5: More',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  TabController _tabController;
  ScrollController _scrollViewController;

  sizedBox() {
    return SizedBox(
      width: 15,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        bottomNavigationBar: getBottomNavBar(),
        body: Stack(
          overflow: Overflow.visible,
          children: [
            NestedScrollView(
              controller: _scrollViewController,
              headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    centerTitle: true,
                    leading: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HeadingCircle()));
                      },
                      icon: Icon(Icons.account_circle),
                    ),
                    actions: [
                      IconButton(
                        color: Colors.grey,
                        icon: Icon(Icons.search),
                        onPressed: () {},
                      ),
                    ],
                    backgroundColor: Colors.grey[900],
                    title: Text(
                      'dribbble',
                      style: TextStyle(fontFamily: 'Pacifico'),
                    ),
                    pinned: true,
                    floating: true,
                    forceElevated: boxIsScrolled,
                    bottom: getTabBar(),
                  ),
                ];
              },
              body: getTabBarView(),
            ),
            Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ],
        ),
      ),
    );
  }

  Widget getBottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.grey[900],
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.offline_bolt),
          title: Text('Shorts'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.graphic_eq),
          title: Text('Activity'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.cloud_upload),
          title: Text('Upload'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.email),
          title: Text('Messages'),
        ),
        BottomNavigationBarItem(
//                activeIcon: IconButton(
//                  onPressed: null,
//                  icon: Icon(Icons.hourglass_full),
//                ),
          icon: Icon(Icons.menu),
          title: Text('More'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
    );
  }

  Widget getTabBar() {
    return TabBar(
      tabs: <Widget>[
        Tab(
          text: "Following",
        ),
        Tab(
          text: "Popular",
        ),
        Tab(
          text: "Recent",
        )
      ],
      controller: _tabController,
    );
  }

  Widget getTabBarView() {
    return TabBarView(
      children: <Widget>[
        Tab(
          child: Text('Tab Bar 1: following'), //Image.asset('assets/12.jpg'),
        ),
        Tab(
          child: Text('Tab Bar 2: popular'),
        ),
        Tab(
          child: Text('Tab Bar 3: recent'),
        ),
      ],
      controller: _tabController,
    );
  }
}
