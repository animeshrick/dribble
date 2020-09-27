import 'package:dribble/OtherInsidePages/HeadingCircle.dart';
import 'package:flutter/material.dart';

import 'file:///C:/Users/User/AndroidStudioProjects/dribble/lib/OtherInsidePages/Settings.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  Color _color = Colors.grey[900];
  bool isSwitched = false;

  // bool light = true;
  // ThemeData _darkMode = ThemeData(brightness: Brightness.dark);
  // ThemeData _normalMode = ThemeData(brightness: Brightness.light);

  @override
  Widget build(BuildContext context) {
    return
        // MaterialApp(
        // theme: light ? _darkMode : _normalMode,
        // home:
        Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            //color: Colors.grey,
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            onPressed: null,
          )
        ],
        leading: CircleAvatar(
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
        backgroundColor: Colors.grey[900],
        title: Text('More'),
      ),
      body: ListView(
        children: [
          Divider(
            color: Colors.grey,
            height: 5,
          ),
          Card(
            elevation: 1,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.shop),
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text('Jobs'),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text('Shop'),
                ),
              ],
            ),
          ),
          Card(
            elevation: 1,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.report),
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text('Report Bug'),
                ),
                ListTile(
                  leading: Icon(Icons.landscape),
                  trailing: Switch(
                    activeTrackColor: Colors.pink,
                    activeColor: Colors.pinkAccent,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    value: isSwitched,
                  ),
                  title: Text('Night Mode'),
                ),
              ],
            ),
          ),
          Card(
            elevation: 1,
            child: ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Settings()));
              },
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text('Settings'),
            ),
          ),
        ],
      ),
    );
    //   );
  }
}
