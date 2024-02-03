import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomTab({
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 11,
              color: Colors.black, // Set text color to black
            ),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 11,
              color: Colors.black, // Set text color to black
            ),
          ),
        ],
      ),
    );
  }
}
