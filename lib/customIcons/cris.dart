import 'package:flutter/material.dart';

class CircleAvatarWithIcon extends StatelessWidget {
  final String imagePath;
  final double radius;

  CircleAvatarWithIcon({
    required this.imagePath,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color.fromARGB(
            255, 255, 255, 255), // Set your desired circle color
      ),
      child: ClipOval(
        child: Image.asset(
          "lib/assets/cris.png",
          width: radius * 2,
          height: radius * 2,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
