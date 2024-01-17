import 'package:flutter/material.dart';

class CustomCircleIcon extends StatelessWidget {
  final Color color;
  final double width;
  final double height;
  final String TEXT;
  final double Font;

  CustomCircleIcon({
    required this.color,
    required this.width,
    required this.height,
    required this.TEXT,
    required this.Font,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(
            height / 2.0), 
        color: color,
      ),
      child: Center(
        child: Text(
          TEXT,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: Font),
        ),
      ),
    );
  }
}
