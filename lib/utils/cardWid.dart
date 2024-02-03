import 'package:flutter/material.dart';
import 'package:uts_clone/customIcons/all_in_one_icon.dart';

class CardWidget extends StatelessWidget {
  final double fontSize;
  final String image;
  final String text;
  final VoidCallback onTap;

  const CardWidget(
      {required this.fontSize,
      required this.image,
      required this.text,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final double cardWth = MediaQuery.of(context).size.width * 0.85;
    final double cardHgt = MediaQuery.of(context).size.width * 0.2;
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Card(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                ALLINONE(
                    width: cardWth / 3,
                    height: cardHgt / 3,
                    Img: image,
                    Font: 0),
                Text(
                  text,
                  style: TextStyle(color: Colors.orange, fontSize: fontSize),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
