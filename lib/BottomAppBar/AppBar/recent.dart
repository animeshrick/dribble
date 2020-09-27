import 'package:flutter/material.dart';

class RecentPage extends StatefulWidget {
  @override
  _RecentPageState createState() => _RecentPageState();
}

class _RecentPageState extends State<RecentPage> {
  final bool select = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          enabled: true,
          selected: select,
          onTap: () {
            print('k');
          },
          subtitle: Text('jigf'),
          leading: Icon(Icons.directions_transit),
          trailing: Icon(Icons.blur_circular),
          title: Text('l'),
        ),
        Icon(Icons.directions_transit),
        Icon(Icons.sd_storage),
        Icon(Icons.add),
        ListTile(
          selected: false,
          onTap: () {
            print('ommk');
          },
          subtitle: Text('jigf'),
          leading: Icon(Icons.blur_circular),
          trailing: Icon(Icons.border_all),
          title: Text('l'),
        ),
        Icon(Icons.query_builder),
        Icon(Icons.security),
        Icon(Icons.directions_transit),
        Icon(Icons.directions_transit),
        Icon(Icons.directions_transit),
        Icon(Icons.directions_transit),
        Icon(Icons.directions_transit),
        Icon(Icons.directions_transit),
        Icon(Icons.sd_storage),
        Icon(Icons.add),
        Icon(Icons.query_builder),
        Icon(Icons.security),
        Icon(Icons.sd_storage),
        Icon(Icons.add),
        Icon(Icons.query_builder),
        Icon(Icons.security),
      ],
    );
  }
}
