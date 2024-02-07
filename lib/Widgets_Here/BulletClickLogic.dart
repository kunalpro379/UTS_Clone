import 'package:flutter/material.dart';
import 'package:uts_railway_clone/Custom_Animations/customClick.dart';
import 'package:uts_railway_clone/Widgets_Here/ShowDIalogBox.dart';

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
            // DialogBox(
            //   content: 'Filtering Stations Based on your Location...',
            //   duration: Duration(seconds: 2),
            // ).showWithAutoClose(context, () {
            //   // Action to perform after dialog is closed
            // });
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
