import 'package:flutter/material.dart';

class MovingTextWid extends StatefulWidget {
  @override
  MovingTextWidState createState() => MovingTextWidState();
}

class MovingTextWidState extends State<MovingTextWid>
    with SingleTickerProviderStateMixin {
  late AnimationController Controller;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    Controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5), // Adjust the duration as needed
    );
    animation = Tween<Offset>(
      begin: Offset(1.0, 0.0),
      end: Offset(-1.0, 0.0), // Larger end value for continuous movement
    ).animate(Controller);

    // Add a listener to restart the animation when it completes
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Controller.reset();
        Controller.forward();
      }
    });

    Controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: animation,
      child: Container(
        padding: EdgeInsets.only(left: 5, right: 5),
        child: Text(
          'IR Unreserved Ticketing',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 174, 255),
              fontSize: 18.0,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  @override
  void dispose() {
    Controller.dispose();
    super.dispose();
  }
}
