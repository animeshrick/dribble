import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HeadingCircle extends StatefulWidget {
  @override
  _HeadingCircleState createState() => _HeadingCircleState();
}

class _HeadingCircleState extends State<HeadingCircle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
        actions: [
          IconButton(
            splashRadius: 20,
            tooltip: 'Share Profile',
            onPressed: () {},
            icon: Icon(
              Icons.share,
              color: Colors.grey,
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 35),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://googleflutter.com/sample_image.jpg'),
                    fit: BoxFit.fill),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    'Animesh',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Durgapur,India',
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.headset_off,
                      color: Colors.grey,
                    ),
                    Text(
                      '  0 ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('shots', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.folder_shared,
                      color: Colors.grey,
                    ),
                    Text(
                      '  0 ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('followers', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.link,
                      color: Colors.grey,
                    ),
                    Text(
                      '  0 ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('likes', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.query_builder,
                      color: Colors.grey,
                    ),
                    Text(
                      '  0 ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('following', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.bubble_chart,
                      color: Colors.grey,
                    ),
                    Text(
                      '  0 ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('buckets', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.sync_problem,
                      color: Colors.grey,
                    ),
                    Text(
                      '  0 ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Projects', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(10, 130, 10, 0),
                child: Image.asset('assets/noShot.jpeg'))
          ],
        ),
      ),
    );
  }
}
