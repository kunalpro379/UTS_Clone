import 'package:flutter/material.dart';

class CustomCircleIconLetter extends StatelessWidget {
  final Color color;
  final double Height;
  final String TEXT; // Use Color instead of color

  CustomCircleIconLetter(
      {required this.color,
      required this.Height,
      required this.TEXT}); // Use named parameter

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28.0,
      height: Height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color, // Set the circle color using the parameter
      ),
      child: Center(
        child: Text(
          TEXT,
          style: TextStyle(
            color: Colors.white, // Set the color of the "S" text
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
