import 'card_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:uts_railway_clone/ShowTickData/show_tick_data.dart';
import 'package:uts_railway_clone/customIcons/D.dart';
import 'package:uts_railway_clone/customIcons/S.dart';

class ticket extends StatelessWidget {
  final TickData tickData;
  const ticket({Key? key, required this.tickData}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 3, right: 3, top: 30, bottom: 2),
      child: Container(
        color: const Color.fromARGB(255, 221, 144, 144),
        child: Column(
          children: [
            Container(
              height: 50,
              color: Color.fromARGB(255, 102, 104, 229),
              child: Row(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Card(
                color: Color.fromARGB(255, 221, 255, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: 40,
                                child: Center(
                                    child: Text(
                                  "HAPPY JOURNY",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ))),
                          ]),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      Row(
                        children: [
                          Container(
                            color: const Color.fromARGB(255, 7, 7, 7),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    height: 20,
                                    child: Text("${tickData.fare}")),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
