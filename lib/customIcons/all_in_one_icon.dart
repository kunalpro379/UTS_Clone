import 'package:flutter/material.dart';

class ALLINONE extends StatelessWidget {
  final double width;
  final double height;
  final String Img;
  final double Font;

  ALLINONE({
    required this.width,
    required this.height,
    required this.Img,
    required this.Font,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(height / 2.0),
      ),
      child: Center(
        child: Image(image: AssetImage(Img)),
      ),
    );
  }
}
