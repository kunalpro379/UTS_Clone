import 'package:flutter/material.dart';
import 'package:uts_railway_clone/screens_here/all_tickets_cards.dart';
import 'package:uts_railway_clone/ShowTickData/show_tick_data.dart';
import 'package:uts_railway_clone/screens_here/splash_screen_load.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
