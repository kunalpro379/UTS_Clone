import 'package:flutter/material.dart';
import 'package:uts_railway_clone/customIcons/all_in_one_icon.dart';
import 'package:uts_railway_clone/screens_here/all_tickets_cards.dart';

class CommonTabView extends StatelessWidget {
  const CommonTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(
        top: 2.0,
      ),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.rectangle),
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 205, 205, 205),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Card(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            ALLINONE(
                                width: 30,
                                height: 30,
                                Img: "lib/assets/cancel.jpg",
                                Font: 0),
                            Text(
                              " CANCEL TICKET ",
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 13),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      child: Card(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              ALLINONE(
                                  width: 30,
                                  height: 30,
                                  Img: "lib/assets/time.jpg",
                                  Font: 0),
                              Text(
                                "BOOKING HISTORY",
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 13),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Card(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TICKSCREEN()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              ALLINONE(
                                  width: 30,
                                  height: 30,
                                  Img: "lib/assets/tks.jpg",
                                  Font: 0),
                              Text(
                                "   SHOW TICKET   ",
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 13),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                color: Color.fromARGB(255, 205, 205, 205),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Card(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              ALLINONE(
                                  width: 30,
                                  height: 30,
                                  Img: "lib/assets/wallet.jpg",
                                  Font: 0),
                              Text(
                                "      R-WALLET      ",
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 13),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Card(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              ALLINONE(
                                  width: 30,
                                  height: 30,
                                  Img: "lib/assets/profile.jpg",
                                  Font: 0),
                              Text(
                                "         PROFILE         ",
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 13),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Card(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              ALLINONE(
                                  width: 30,
                                  height: 30,
                                  Img: "lib/assets/m.jpg",
                                  Font: 0),
                              Text(
                                " TRANSACTIONS ",
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 13),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
