import 'package:flutter/material.dart';
import 'package:uts_railway_clone/ShowTickData/show_tick_data.dart';
import 'package:uts_railway_clone/Widgets_Here/card_widgets.dart';

class TICKSCREEN extends StatelessWidget {
  const TICKSCREEN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Show Ticket",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400),
          ),
          titleSpacing: 10,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 188, 77, 77),
                  Color.fromARGB(255, 255, 172, 104),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 40,
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.airplane_ticket_sharp),
                          Text(
                            " SHOW TICKET",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 188, 77, 77),
                            Color.fromARGB(255, 255, 172, 104),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: ShowTickData().ticketDataList.length,
                  itemBuilder: (context, index) {
                    return FloatingCardCollections(
                      tickData: ShowTickData().ticketDataList[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// main.dart