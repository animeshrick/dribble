import 'package:flutter/material.dart';

class HeadingCircle extends StatefulWidget {
  @override
  _HeadingCircleState createState() => _HeadingCircleState();
}

class _HeadingCircleState extends State<HeadingCircle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Center(
            child: CircleAvatar(),
          ),
          Center(
            child: Column(
              children: [
                Text('Animesh'),
                Text('Durgapur,India'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
