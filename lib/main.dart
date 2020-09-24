import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dribble/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        buttonColor: Colors.white,
        bottomAppBarColor: Colors.red,
//        canvasColor: Colors.green,
      ),
      title: 'Flutter Demo',
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: Image.asset('assets/dribble.png'),
          nextScreen: Home(),
          splashTransition: SplashTransition.rotationTransition,
          //pageTransitionType: PageTransitionT,
          backgroundColor: Colors.grey[900]), //Home(),
    );
  }
}
