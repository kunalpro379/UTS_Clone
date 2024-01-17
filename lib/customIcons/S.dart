import 'package:flutter/material.dart';

class CustomCircleIconLetter extends StatelessWidget {
  final Color color;
  final double Height;
  final String TEXT;

  CustomCircleIconLetter(
      {required this.color, required this.Height, required this.TEXT});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28.0,
      height: Height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Center(
        child: Text(
          TEXT,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
