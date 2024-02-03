import 'package:flutter/material.dart';

Widget Card1() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 10),
    child: Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          customText(
              "* Use this option if you are outside station premises/Railway",
              Colors.black,
              11.5),
          customText("track", Colors.black, 11.5),
          customText(
              "*Use show ticket option on mobile is the travel authority",
              Colors.black,
              11.5),
          customText(
              "*Set your ticket option on mobile is the travel authority",
              Colors.black,
              11.5),
          customText("* No cancellation is allowed for paperless ticket",
              Colors.red, 11.5),
        ],
      ),
    ),
  );
}

Widget Card2() {
  return Padding(
    padding: const EdgeInsets.only(left: 25, right: 20),
    child: Card(
      child: Column(
        children: [],
      ),
    ),
  );
}

Widget customText(String text, Color color, double size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(1.0),
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: size,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
