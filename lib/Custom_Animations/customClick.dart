import 'package:flutter/material.dart';

class ClickableCircle extends StatelessWidget {
  final int isSelectedAny;
  final VoidCallback onTap;

  ClickableCircle({required this.isSelectedAny, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Circle tapped");
        onTap();
      },
      child: Center(
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: isSelectedAny == 1 ? Colors.orange : Colors.black,
              width: 2,
            ),
          ),
          child: Center(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: isSelectedAny == 1 ? 10 : 0,
              height: isSelectedAny == 1 ? 10 : 0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelectedAny == 1 ? Colors.orange : Colors.transparent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget CustomClick1({
  required String text,
  required bool isSelectedAny,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Row(
      children: [
        ClickableCircle(
          isSelectedAny: isSelectedAny ? 1 : 0, // Convert bool to int
          onTap: onTap,
        ),
        SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}

Widget CustomClick2({
  required String text,
  required bool isSelectedAny,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Row(
      children: [
        ClickableCircle(
          isSelectedAny: isSelectedAny ? 1 : 0, // Convert bool to int
          onTap: onTap,
        ),
        SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}
