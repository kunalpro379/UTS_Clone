import 'package:uts_railway_clone/ShowTickData/show_tick_data.dart';
import 'package:uts_railway_clone/customIcons/D.dart';
import 'package:uts_railway_clone/customIcons/S.dart';
import 'package:uts_railway_clone/customIcons/cris.dart';
import 'package:uts_railway_clone/moving_text_wid.dart';
import 'dart:ui';
import 'package:flutter/material.dart';

class ticket extends StatelessWidget {
  final TickData tickData;
  const ticket({Key? key, required this.tickData}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(
        left: 3,
        right: 3,
        top: 25,
      ),
      child: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(children: [
          SizedBox(
            height: 30,
            //color: Color.fromARGB(255, 255, 255, 255),
            child: //Padding(
                //padding: const EdgeInsets.only(bottom: 5.0),
                //child:
                Center(
              child: Row(
                children: [
                  CustomCircleIconCRIS(),
                  Expanded(
                    child: MovingTextWid(),
                  ),
                ],
              ),
            ),
            //),
          ),
          // SizedBox(
          //   height: 10,
          // ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 6),
            child: Container(
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        // decoration: BoxDecoration.,
                        color: Colors.yellow,
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
                                      height: 30,
                                      child: Center(
                                          child: Text(
                                        "HAPPY JOURNEY",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ))),
                                ]),
                            Divider(
                              color: Colors.black,
                              thickness: 0.8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "     ",
                                  //style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "${tickData.TickType2}",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "${tickData.onlyDate}",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.currency_rupee_sharp,
                                      size: 16,
                                      weight: 700,
                                    ),
                                    Text(
                                      "${tickData.Price}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                )),
                                Text(
                                  "${tickData.PhoneNo}",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "UTS No: ${tickData.UTS_NO}",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 0.8,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 26,
                                ),
                                Text("${tickData.MarathiSource}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16))
                              ],
                            ),
                            Row(
                              children: [
                                CustomCircleIconLetter(
                                  TEXT: "S",
                                  Height: 20,
                                  color: Color.fromARGB(255, 123, 61, 131),
                                ),
                                Text(
                                  "${tickData.Csource}",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 26,
                                ),
                                Text("${tickData.HindiSource}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16))
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 26,
                                ),
                                Text("${tickData.MarathiDest}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16))
                              ],
                            ),
                            Row(
                              children: [
                                CustomCircleIconLetter(
                                  Height: 20,
                                  TEXT: "D",
                                  color: Color.fromARGB(255, 123, 61, 131),
                                ),
                                Text(
                                  // "${tickData.Ddest}",
                                  "KURLA JN.",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 26,
                                ),
                                Text("${tickData.HindiDest}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16))
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Adult: ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                                Text(
                                  "${tickData.adult_count}     ",
                                  style: TextStyle(
                                      //fontSize: 15,
                                      ),
                                ),
                                Text(
                                  "Child: ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                                Text(
                                  "${tickData.child_count}     ",
                                  //style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    child: Row(
                                  children: [
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text("${tickData.MarathiClass}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16)),
                                  ],
                                )),
                                Container(
                                    child: Row(
                                  children: [
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text("${tickData.MTrainTyp}")
                                  ],
                                ))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    child: Row(
                                  children: [
                                    Text("CLASS: "),
                                    Text(
                                      // "${tickData.Ddest}",
                                      "${tickData.CTrainTyp}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                )),
                                Container(
                                    child: Row(
                                  children: [],
                                ))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Text("${tickData.HindiClass}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16)),
                                    ],
                                  ),
                                ),
                                Container(
                                    child: Row(
                                  children: [],
                                ))
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 0.8,
                            ),
                            Row(
                              children: [
                                CustomCircleIcon(
                                  TEXT: "via",
                                  color: Color.fromARGB(255, 190, 95, 185),
                                  width: 22,
                                  height: 19,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text("${tickData.via}"),
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 0.8,
                            ),
                            Row(
                              children: [
                                Text(
                                  "SAC:",
                                ),
                                Text("${tickData.SAC}      ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600)),
                                Text(
                                  "IR:",
                                ),
                                Text("${tickData.IR}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600))
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 0.3,
                            ),
                          ],
                        ),
                      ),
                      Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "It is recommended not to perform factory reset or change",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 11.5,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ]),
                              Row(
                                children: [
                                  Text(
                                    "your handset whenever you are having valid ticket in the",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 11.5,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "mobile. ",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 11.5,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Click for Changing Handset with Valid Ticket",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.orange,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11.5),
                                  )
                                ],
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              )),
            ),
          ),
        ]),
      ),
    ));
  }
}
