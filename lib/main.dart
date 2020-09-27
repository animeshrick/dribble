import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'OtherInsidePages/DribbbleHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: Image.asset('assets/dribble.png'),
          nextScreen: DribbbleHomePage(),
          splashTransition: SplashTransition.rotationTransition,
          //pageTransitionType: PageTransitionT,
          backgroundColor: Colors.grey[900]), //Home(),
    );
  }
}
