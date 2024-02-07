import 'package:flutter/material.dart';
import 'package:uts_railway_clone/customIcons/IR.dart';
import 'package:uts_railway_clone/customIcons/all_in_one_icon.dart';
import 'package:uts_railway_clone/customIcons/D.dart';

class CustomAppBarPage extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          CustomCircleIconIR(),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "UTS",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                " IR Unreserved Ticketing ",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          ALLINONE(width: 30, height: 30, Img: "lib/assets/lang.jpg", Font: 0),
          SizedBox(
            width: 10,
          ),
          CustomCircleIcon(
            color: Colors.red,
            width: 30,
            height: 30,
            TEXT: "LOGIN",
            Font: 8,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      titleSpacing: 10, // Adjust the spacing as needed
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 129, 79),
              Color.fromARGB(255, 255, 168, 97),
            ],
          ),
        ),
      ),
    );
  }
}
