import 'package:flutter/material.dart';

import '../BottomAppBar/Activity.dart';
import '../BottomAppBar/Messages.dart';
import '../BottomAppBar/More.dart';
import '../BottomAppBar/Shorts.dart';
import '../BottomAppBar/Upload.dart';

List _widgetOptions = [
  Shorts(),
  Activity(),
  Upload(),
  Messages(),
  More(),
];

class DribbbleHomePage extends StatefulWidget {
  @override
  _DribbbleHomePageState createState() => _DribbbleHomePageState();
}

class _DribbbleHomePageState extends State<DribbbleHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getBottomNavBar(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
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
}
