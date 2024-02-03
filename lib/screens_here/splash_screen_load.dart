import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uts_clone/screens_here/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Waiting for some time
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomeScreenFake(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    //return Scaffold();
    //FOR VIEWING FULL SCREEN
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    // return MaterialApp(
    //   home:
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          const Color.fromARGB(255, 217, 92, 83),
          Color.fromARGB(255, 225, 135, 61)
        ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
        child: Center(
            child: Container(
                height: 100,
                width: 100,
                child: Image.asset('lib/assets/UTS_LOGO.png'))),
      ),
    );
    // );
  }
}

// class MyWID extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Your widget content goes here
//     return Container(
//       child: Center(child: Image(image: AssetImage('assets/UTSlogo.webp'))),
//       decoration: BoxDecoration(
//           gradient: LinearGradient(colors: [
//         const Color.fromARGB(255, 217, 92, 83),
//         Color.fromARGB(255, 225, 135, 61)
//       ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
//     );
//   }
// }
