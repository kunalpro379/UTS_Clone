// custom_icon.dart
import 'package:flutter/material.dart';
import 'dart:ui';

class CustomCircleIconIR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        width: 30.0,
        height: 30.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color.fromARGB(
              255, 255, 255, 255), // Set your desired circle color
        ),
        child: Center(
          child: Image.asset(
            'lib/assets/IR.png',
            fit: BoxFit.cover, // Specify BoxFit for the image
          ),
        ),
      ),
    );
  }
}
