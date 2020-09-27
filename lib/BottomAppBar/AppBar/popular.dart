import 'package:flutter/material.dart';

class PopularPage extends StatefulWidget {
  @override
  _PopularPageState createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
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
        Icon(Icons.directions_transit),
      ],
    );
  }
}
