import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';
import 'package:scroll_bottom_navigation_bar/scroll_bottom_navigation_bar.dart';

class DemoList extends StatefulWidget {
  @override
  _DemoListState createState() => _DemoListState();
}

class _DemoListState extends State<DemoList> {
  ScrollController _scrollController;
  final controller = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        //extendBodyBehindAppBar: true,
        appBar: ScrollAppBar(
          controller: controller,
          //elevation: 0.9,
          //backgroundColor: Colors.transparent,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          title: Text('List'),
        ),
        bottomNavigationBar: ScrollBottomNavigationBar(
          controller: controller,
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
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
        body: Stack(
          overflow: Overflow.visible,
          children: [
            // getTabBarView(),
            getListView(),
          ],
        ),
      ),
    );
  }
}

Widget getTabBarView() {
  var tabBarView = TabBarView(
    children: [
      Icon(Icons.directions_car),
      Icon(Icons.directions_transit),
      Icon(Icons.directions_bike),
    ],
  );
  return tabBarView;
}

Widget getListView() {
  var listView = ListView(
    children: [
      ListTile(
        leading: Icon(Icons.local_activity, size: 50),
        title: Text('Activity'),
        subtitle: Text('Description here'),
      ),
      ListTile(
        leading: Icon(Icons.local_airport, size: 50),
        title: Text('Airport'),
        subtitle: Text('Description here'),
      ),
      ListTile(
        leading: Icon(Icons.local_atm, size: 50),
        title: Text('ATM'),
        subtitle: Text('Description here'),
      ),
      ListTile(
        leading: Icon(Icons.local_bar, size: 50),
        title: Text('Bar'),
        subtitle: Text('Description here'),
      ),
      ListTile(
        leading: Icon(Icons.local_cafe, size: 50),
        title: Text('Cafe'),
        subtitle: Text('Description here'),
      ),
      ListTile(
        leading: Icon(Icons.local_car_wash, size: 50),
        title: Text('Car Wash'),
        subtitle: Text('Description here'),
      ),
      ListTile(
        leading: Icon(Icons.local_convenience_store, size: 50),
        title: Text('Heart Shaker'),
        subtitle: Text('Description here'),
      ),
      ListTile(
        leading: Icon(Icons.local_dining, size: 50),
        title: Text('Dining'),
        subtitle: Text('Description here'),
      ),
      ListTile(
        leading: Icon(Icons.local_drink, size: 50),
        title: Text('Drink'),
        subtitle: Text('Description here'),
      ),
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text('1st'),
        subtitle: Text('Text'),
        trailing: Icon(Icons.wb_sunny),
      ),
      ListTile(
        leading: Icon(Icons.local_grocery_store, size: 50),
        title: Text('Grocery Store'),
        subtitle: Text('Description here'),
      ),
      ListTile(
        leading: Icon(Icons.local_gas_station, size: 50),
        title: Text('Gas Station'),
        subtitle: Text('Description here'),
      ),
      ListTile(
        leading: Icon(Icons.local_drink, size: 50),
        title: Text('Drink'),
        subtitle: Text('Description here'),
      ),
    ],
  );
  return listView;
}
