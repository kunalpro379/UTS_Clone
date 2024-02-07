import 'package:uts_railway_clone/ShowTickData/show_tick_data.dart';
import 'package:uts_railway_clone/customIcons/D.dart';
import 'package:uts_railway_clone/customIcons/IR.dart';
import 'package:uts_railway_clone/customIcons/S.dart';
import 'package:uts_railway_clone/customIcons/cris.dart';
import 'package:uts_railway_clone/Custom_Animations/moving_text_wid.dart';
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  CustomCircleIconCRIS(),
                  Expanded(
                    child: MovingTextWid(),
                  ),
                  CustomCircleIconIR(),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
            //),
          ),
          // SizedBox(
          //   height: 10,
          // ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 2),
            child: Card(
              elevation: 20,
              child: Column(
                children: [
                  Container(
                    //color: Colors.yellow,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 174, 255, 0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        )),
                    padding: EdgeInsets.only(left: 10, right: 10, top: 5),

                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: 25,
                                  child: Center(
                                      child: Text(
                                    "HAPPY JOURNEY",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
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
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 12),
                            ),
                            Text(
                              "${tickData.onlyDate}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 2,
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
                                  size: 14,
                                  weight: 700,
                                ),
                                Text(
                                  "${tickData.Price}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12),
                                ),
                              ],
                            )),
                            Text(
                              "${tickData.PhoneNo}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "UTS No: ${tickData.UTS_NO}",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                              ),
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
                                    fontWeight: FontWeight.w600, fontSize: 12))
                          ],
                        ),
                        Row(
                          children: [
                            CustomCircleIconLetter(
                              TEXT: "S",
                              Height: 18,
                              color: Color.fromARGB(255, 225, 0, 255),
                            ),
                            Text(
                              "${tickData.Csource}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 12),
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
                                    fontWeight: FontWeight.w600, fontSize: 12))
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 26,
                            ),
                            Text("${tickData.MarathiDest}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 12))
                          ],
                        ),
                        Row(
                          children: [
                            CustomCircleIconLetter(
                                Height: 18,
                                TEXT: "D",
                                color: Color.fromARGB(255, 225, 0, 255)),
                            Text(
                              // "${tickData.Ddest}",
                              "KURLA JN.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 12),
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
                                    fontWeight: FontWeight.w700, fontSize: 12))
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Adult: ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 12),
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
                                  fontWeight: FontWeight.w600, fontSize: 12),
                            ),
                            Text(
                              "${tickData.child_count}     ",
                              //style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
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
                                        fontSize: 12)),
                              ],
                            )),
                            Container(
                                child: Row(
                              children: [
                                Text(
                                  "${tickData.MTrainTyp}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
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
                                Text(
                                  "CLASS: ",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  // "${tickData.Ddest}",
                                  "${tickData.CTrainTyp}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )),
                            Container(
                                child: Row(
                              children: [
                                Text(
                                  "TRAIN TYPE: ",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  "${tickData.TickType2}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                )
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
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Text("${tickData.HindiClass}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12)),
                                ],
                              ),
                            ),
                            Container(
                                child: Row(
                              children: [
                                Text(
                                  "${tickData.HTrainTyp}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
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
                              Font: 20,
                              TEXT: "via",
                              color: Color.fromARGB(255, 190, 95, 185),
                              width: 20,
                              height: 17,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "${tickData.via}",
                              style: TextStyle(fontSize: 13),
                            ),
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
                              style: TextStyle(fontSize: 13),
                            ),
                            Text("${tickData.SAC}      ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 13)),
                            Text(
                              "IR:",
                              style: TextStyle(fontSize: 13),
                            ),
                            Text("${tickData.IR}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 13))
                          ],
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 0.3,
                        ),
                        Row(
                          children: [
                            Text(
                              "Journey Should Commence within 1 hour",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(children: [
                          Text(
                            "Valid for onw ret. jrny. till midnight of 11/01/2024",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                        ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${tickData.ID}",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w800),
                            ),
                            Container(
                                child: Row(
                              children: [
                                Text(
                                  "Distance: ${tickData.distance}",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 5,
                                )
                              ],
                            ))
                          ],
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              "Booking Time:",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            Text(
                              " ${tickData.BookingDateAndTime}",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "It is recommended not to perform factory reset or change",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ]),
                            Row(
                              children: [
                                Text(
                                  "your handset whenever you are having valid ticket in the",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 12,
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
                                      fontSize: 12,
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
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "FOR MEDICAL EMERGENCY / FIRST AID, CONTACT ",
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 243, 33, 33),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 24,
                                ),
                                Text(
                                  "TICKET CHEAKING STAFFIGUARD OR DIAL 139",
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 243, 33, 33),
                                      fontSize: 11.5,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            ElevatedButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                "OPEN QR CODE",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 13,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 255, 119, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                minimumSize: Size(350, 35),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                "NEXT TRAINS TO KURLA JN..",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 13,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 255, 119, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                minimumSize: Size(350, 35),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                "OK",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 13,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 255, 119, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                minimumSize: Size(350,
                                    35), // Set the minimum width and height
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 80,
              ),
              Text(
                "Centre for Railway Information Systems",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              )
            ],
          )
        ]),
      ),
    ));
  }
}
