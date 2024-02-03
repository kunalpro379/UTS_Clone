import 'package:flutter/material.dart';

import 'package:uts_clone/ShowTickData/show_tick_data.dart';
import 'package:uts_clone/Widgets_Here/real_ticket_wid.dart';
import 'package:uts_clone/customIcons/D.dart';
import 'package:uts_clone/customIcons/S.dart';

class FloatingCardCollections extends StatelessWidget {
  final TickData tickData;
  const FloatingCardCollections({Key? key, required this.tickData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ticket(tickData: tickData)));
      },
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 10,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 188, 77, 77),
                        Color.fromARGB(255, 255, 172, 104),
                      ],
                    ),
                  ),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "  ${tickData.TickType}",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        Divider(
                          height: 20, // Adjust the height of the divider
                          color: Color.fromARGB(255, 0, 0, 0),
                          thickness: 4, // Adjust the thickness of the divider
                        ),
                        Row(
                          children: [
                            Text(
                              "FARE ",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            Icon(Icons.currency_rupee_sharp),
                            Text(
                              "${tickData.fare}",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors
                                      .white), // Adjust the font size as needed
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                heightFactor: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 5,
                                height: 30,
                              ),
                              CustomCircleIconLetter(
                                TEXT: "S",
                                Height: 28,
                                color: Colors.orange,
                              ),
                              Text(
                                "${tickData.source}",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          height: 30,
                        ),
                        // Divider(
                        //   height: 20, // Adjust the height of the divider
                        //   color: Color.fromARGB(255, 0, 0, 0),
                        //   thickness: 4, // Adjust the thickness of the divider
                        // ),
                        //Image(image: AssetImage('lib/assets/D.jpg')),
                        Container(
                          child: Row(
                            children: [
                              CustomCircleIconLetter(
                                color: Colors.orange,
                                Height: 28,
                                TEXT: "D",
                              ),
                              Text("${tickData.destination}",
                                  style: TextStyle(
                                      fontWeight: FontWeight
                                          .w500) // Adjust the font size as needed
                                  ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: Divider(
                  height: 3,
                  color: Color.fromARGB(238, 174, 159, 159),
                ),
              ),
              Center(
                heightFactor: 1.5,
                child: Padding(
                  padding: const EdgeInsets.only(left: 13, right: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 17,
                        child: Text(
                          "Via: ${tickData.via}",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: Divider(
                    height: 4, color: Color.fromARGB(139, 123, 123, 123)),
              ),
              Center(
                heightFactor: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 13, right: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 16,
                        child: Text(
                            "ADULT: ${tickData.adult_count}, CHILD: ${tickData.child_count}",
                            style: TextStyle(
                                fontSize: 11.5, fontWeight: FontWeight.w400)),
                      ),
                      Divider(height: 2, color: Colors.black),
                      Container(
                        height: 16,
                        child: Text(" ${tickData.TickType}",
                            style: TextStyle(
                                fontSize: 11.5, fontWeight: FontWeight.w400)),
                      ),
                      SizedBox(width: 10),
                      Divider(height: 4, color: Colors.black),
                      Container(
                        height: 16,
                        child: Text("ORIDNARY (O)",
                            style: TextStyle(
                                fontSize: 11.5, fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: Divider(
                    height: 4, color: Color.fromARGB(139, 123, 123, 123)),
              ),
              Center(
                heightFactor: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 13, right: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "BOOKING DATE: ",
                        style: TextStyle(fontSize: 11),
                      ),
                      Text(
                        "${tickData.BookingDateAndTime}",
                        style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 255, 106, 0)),
                      ),

                      Divider(
                          height: 4, color: Color.fromARGB(139, 123, 123, 123)),
                      SizedBox(width: 20), // Adjust the height as needed

                      Text(
                        "UTS NO: ",
                        style: TextStyle(fontSize: 11),
                      ),
                      Text(
                        "${tickData.UTS_NO}",
                        style: TextStyle(
                            fontSize: 11,
                            color: const Color.fromARGB(255, 255, 123, 7)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: Divider(
                    height: 4, color: Color.fromARGB(139, 123, 123, 123)),
              ),
              Center(
                heightFactor: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Row(children: [
                          Icon(Icons.arrow_forward),
                          Text(" VIEW TICKET ")
                        ]),
                        Divider(
                            height: 4,
                            color: Color.fromARGB(139, 123, 123, 123)),
                      ]),
                      // SizedBox(width: 40),
                      // Adjust the height as needed
                      Row(
                        children: [Icon(Icons.search), Text(" NEXT TRAINS ")],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: SizedBox(
                  height: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
