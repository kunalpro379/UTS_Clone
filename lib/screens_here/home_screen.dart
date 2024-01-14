import 'package:flutter/material.dart';
import 'package:uts_railway_clone/Custom_Animations/text_animation_homescreen.dart';
import 'package:uts_railway_clone/customIcons/D.dart';
import 'package:uts_railway_clone/customIcons/IR.dart';
import 'package:uts_railway_clone/customIcons/all_in_one_icon.dart';
import 'package:uts_railway_clone/Custom_TabBars/custom_tapbar.dart';
import 'package:uts_railway_clone/tab_bar_view/journey_ticket.dart';
import 'package:uts_railway_clone/tab_bar_view/platform_ticket.dart';
import 'package:uts_railway_clone/tab_bar_view/qr_booking.dart';
import 'package:uts_railway_clone/tab_bar_view/quick_booking.dart';
import 'package:uts_railway_clone/tab_bar_view/season_ticket.dart';

class HomeScreenFake extends StatelessWidget {
  const HomeScreenFake({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
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
                  width: 30,
                ),
                ALLINONE(
                    width: 30, height: 30, Img: "lib/assets/lang.jpg", Font: 0),
                SizedBox(
                  width: 20,
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
            //bottom:
          ),
          body: Column(
            children: [
              Container(
                color: Colors.white,
                height: 50,
                child: FontStyleChangingAnimation(),
              ),
              Divider(
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                child: Container(
                  height: 40,
                  child: Row(
                    children: [
                      ALLINONE(
                          width: 60,
                          height: 60,
                          Img: "lib/assets/jrny_ticket.jpg",
                          Font: 0),
                      SizedBox(width: 14),
                      ALLINONE(
                          width: 65,
                          height: 65,
                          Img: "lib/assets/qr_code.jpg",
                          Font: 0),
                      SizedBox(width: 15),
                      ALLINONE(
                          width: 60,
                          height: 60,
                          Img: "lib/assets/quick.jpg",
                          Font: 0),
                      SizedBox(width: 15),
                      ALLINONE(
                          width: 60,
                          height: 60,
                          Img: "lib/assets/trains.jpg",
                          Font: 0),
                      SizedBox(width: 15),
                      ALLINONE(
                          width: 60,
                          height: 60,
                          Img: "lib/assets/season.jpg",
                          Font: 0),
                    ],
                  ),
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                height: 70,
                constraints: BoxConstraints.expand(height: 50),
                child: TabBar(
                  isScrollable: false,
                  physics: NeverScrollableScrollPhysics(),
                  tabs: [
                    CustomTab(title: "Journey", subtitle: "Ticket"),
                    CustomTab(title: "Journey", subtitle: "Ticket"),
                    CustomTab(title: "Journey", subtitle: "Ticket"),
                    CustomTab(title: "Journey", subtitle: "Ticket"),
                    CustomTab(title: "Journey", subtitle: "Ticket"),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    JrnyTck(),
                    QrB(),
                    PltFtck(),
                    qbook(),
                    Stck(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
