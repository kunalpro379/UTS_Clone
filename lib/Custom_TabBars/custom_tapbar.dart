import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final String? Img;
  final String title;
  final String subtitle;

  const CustomTab({
    required this.title,
    required this.subtitle,
    this.Img,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Tab(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          ///mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image(image: Image.asset(Img!).image),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
