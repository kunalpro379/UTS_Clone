import 'package:flutter/material.dart';
import 'package:uts_clone/Custom_Animations/customClick.dart';
import 'package:uts_clone/Widgets_Here/afterBuletClikedChange.dart';

// class BuletClick extends StatefulWidget {
//   // final void Function(int) onBulletSelected;

//   // BuletClick({required this.onBulletSelected});
//   @override
//   _BuletClickState createState() => _BuletClickState();
// }

// class _BuletClickState extends State<BuletClick> {
//   int selectedBul = 0;

//   void selectBul(int value) {
//     setState(() {
//       selectedBul = value;
//     });

//     if (value == 1) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => Card1()),
//       );
//     }
//     if (value == 0) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => Card2()),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         CustomClick1(
//             text: "Book & Travel (Paperless)",
//             isSelectedAny: selectedBul == 0,
//             onTap: () {
//               selectBul(0);
//               // setState(() {
//               //   widget.onBulletSelected(selectedBul);
//               // });
//             }),
//         CustomClick2(
//             text: "Book & Print (Paper)",
//             isSelectedAny: selectedBul == 1,
//             onTap: () {
//               selectBul(0);
//               // setState(() {
//               //   widget.onBulletSelected(selectedBul);
//               // });
//             }),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:uts_clone/Custom_Animations/customClick.dart';
import 'package:uts_clone/Widgets_Here/afterBuletClikedChange.dart';

import 'package:flutter/material.dart';
import 'package:uts_clone/Custom_Animations/customClick.dart';

class BuletClick extends StatefulWidget {
  final void Function(int) onBulletSelected;

  BuletClick({required this.onBulletSelected});

  @override
  _BuletClickState createState() => _BuletClickState();
}

class _BuletClickState extends State<BuletClick> {
  int selectedBul = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomClick1(
          text: "Book & Travel (Paperless)",
          isSelectedAny: selectedBul == 0,
          onTap: () {
            setState(() {
              selectedBul = 0;
              widget.onBulletSelected(selectedBul);
            });
          },
        ),
        CustomClick2(
          text: "Book & Print (Paper)",
          isSelectedAny: selectedBul == 1,
          onTap: () {
            setState(() {
              selectedBul = 1;
              widget.onBulletSelected(selectedBul);
            });
          },
        ),
      ],
    );
  }
}
