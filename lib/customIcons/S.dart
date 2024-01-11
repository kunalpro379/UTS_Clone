// custom_icon.dart
import 'package:flutter/material.dart';

class CustomCircleIconS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28.0,
      height: 28.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:
            Color.fromARGB(255, 251, 140, 80), // Set your desired circle color
      ),
      child: Center(
        child: Text(
          "S",
          style: TextStyle(
            color: Colors.white, // Set the color of the "S" text
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}