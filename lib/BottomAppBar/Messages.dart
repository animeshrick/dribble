import 'package:dribble/OtherInsidePages/HeadingCircle.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  Color _color = Colors.grey[900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: Colors.grey[900],
        title: Text('Messages'),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Image.asset('assets/messages.jpeg'),
      ),
    );
  }
}
