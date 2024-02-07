import 'package:flutter/material.dart';

class CustomSelector extends StatelessWidget {
  const CustomSelector({Key? key, this.text1, this.text2, this.text3})
      : super(key: key);

  final String? text1;
  final String? text2;
  final String? text3;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (text1 != null) Text(text1!, style: TextStyle(fontSize: 13)),
          if (text2 != null) Text(text2!, style: TextStyle(fontSize: 16)),
          if (text3 != null) Text(text3!, style: TextStyle(fontSize: 11)),
          Divider(
            thickness: 2,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
