import 'package:flutter/material.dart';
import 'package:uts_clone/customIcons/all_in_one_icon.dart';
import 'package:uts_clone/screens_here/all_tickets_cards.dart';

import 'package:uts_clone/utils/cardWid.dart';

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
            Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                    color: Color.fromARGB(255, 205, 205, 205),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardWidget(
                            //context: context,
                            image: "lib/assets/cancel.jpg",
                            fontSize: 13,
                            text: "CANCEL TICKET",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TICKSCREEN()),
                              );
                            },
                          ),
                          CardWidget(
                            //context: context,
                            image: "lib/assets/time.jpg",
                            fontSize: 12,
                            text: "BOOKING HISTORY",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TICKSCREEN()),
                              );
                            },
                          ),
                          CardWidget(
                            //context: context,
                            image: "lib/assets/tks.jpg",
                            fontSize: 12,
                            text: "SHOW TICKET",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TICKSCREEN()),
                              );
                            },
                          ),
                        ]))),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                color: Color.fromARGB(255, 205, 205, 205),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardWidget(
                      //context: context,
                      image: "lib/assets/wallet.jpg",
                      fontSize: 13,
                      text: "R-WALLET",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TICKSCREEN()),
                        );
                      },
                    ),
                    CardWidget(
                      image: "lib/assets/profile.jpg",
                      fontSize: 13,
                      text: "PROFILE",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TICKSCREEN()),
                        );
                      },
                    ),
                    CardWidget(
                      image: "lib/assets/m.jpg",
                      fontSize: 13,
                      text: "TRANSACTIONS",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TICKSCREEN()),
                        );
                      },
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
/*  CARDWIDGET(
              width: 30,
              height: 30,
              image: "lib/assets/cancel.jpg",
              fontSize: 13,
              text: "CANCEL TICKET",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TICKSCREEN()),
                );
              },
            ),
            CARDWIDGET(
              width: 30,
              height: 30,
              image: "lib/assets/time.jpg",
              fontSize: 13,
              text: "BOOKING HISTORY",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TICKSCREEN()),
                );
              },
            ),
            CARDWIDGET(
              width: 30,
              height: 30,
              image: "lib/assets/tks.jpg",
              fontSize: 13,
              text: "SHOW TICKET",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TICKSCREEN()),
                );
              },
            ),*/