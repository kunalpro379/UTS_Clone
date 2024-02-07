import 'package:flutter/material.dart';
import 'package:uts_railway_clone/tab_bar_view/common_tab_view.dart';
import 'package:uts_railway_clone/Custom_Animations/customClick.dart';
import 'package:uts_railway_clone/Widgets_Here/BulletClickLogic.dart';
import 'package:uts_railway_clone/Widgets_Here/afterBuletClikedChange.dart';
import 'package:uts_railway_clone/customIcons/CustomSelectorIcon.dart';
import 'package:uts_railway_clone/utils/ElevatedButtons.dart';
import 'package:uts_railway_clone/screens_here/GetFare.dart';

class JrnyTck extends StatefulWidget {
  JrnyTck({Key? key}) : super(key: key);

  @override
  State<JrnyTck> createState() => _JrnyTckState();
}

class _JrnyTckState extends State<JrnyTck> {
  int selectedBul = 0;

  void selectBul(int value) {
    setState(() {
      selectedBul = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 130,
              child: CommonTabView(),
              color: Colors.yellow,
            ),
            Container(
              width: 380,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 10,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 255, 129, 79),
                            Color.fromARGB(255, 255, 168, 97),
                          ],
                        ),
                      ),
                      height: 40,
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          top: 10,
                        ),
                        child: Text(
                          "NORMAL BOOKING",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 12.0, right: 12, top: 7),
                      child: BuletClick(
                        onBulletSelected: selectBul,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    if (selectedBul == 0) // Show Card1 if selectedBul is 0
                      Card1(),
                    if (selectedBul == 1) // Show Card2 if selectedBul is 1
                      Card2(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomSelector(
                            text1: "Depart from",
                            text2: "STN",
                            text3: "Station Name",
                          ),
                          Icon(Icons.arrow_forward),
                          CustomSelector(
                            text1: "Depart from",
                            text2: "STN",
                            text3: "Station Name",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: CustomButton(
                              text: 'NEXT TRAINS',
                              fontSize: 15,
                              color: Colors.orange,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => GetFare()));
                              },
                            ),
                          ),
                          Container(
                            width: 150,
                            child: CustomButton(
                              text: 'GET FARE',
                              fontSize: 15,
                              color: Colors.orange,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => GetFare()));
                              },
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
