import 'package:flutter/material.dart';

class CustomCircleIcon extends StatelessWidget {
  final Color color;
  final double width;
  final double height;
  final String TEXT;

  CustomCircleIcon({
    required this.color,
    required this.width,
    required this.height,
    required this.TEXT,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(
            height / 2.0), // Use borderRadius to create an oval shape
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
