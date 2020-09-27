import 'package:flutter/material.dart';

class Upload extends StatefulWidget {
  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: DraggableScrollableSheet(
        expand: true,
        initialChildSize: 1,
        minChildSize: .25,
        maxChildSize: 1,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                  "https://cdn.dribbble.com/users/1215894/screenshots/3654697/dribbble-matthew-beasley-72_1x.jpg"),
            ),
          );
        },
      ),
    );
  }
}
