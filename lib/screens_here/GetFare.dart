import 'package:flutter/material.dart';
import 'package:uts_railway_clone/CustomAppBars/homeAppBar.dart';
import 'package:uts_railway_clone/ShowTickData/TickData.dart';
import 'package:uts_railway_clone/ShowTickData/saveJsonToDartModel.dart';
import 'package:uts_railway_clone/tab_bar_view/common_tab_view.dart';
import 'package:uts_railway_clone/Custom_Animations/customClick.dart';
import 'package:uts_railway_clone/Widgets_Here/BulletClickLogic.dart';
import 'package:uts_railway_clone/Widgets_Here/afterBuletClikedChange.dart';
import 'package:uts_railway_clone/customIcons/CustomSelectorIcon.dart';
import 'package:uts_railway_clone/utils/ElevatedButtons.dart';
import 'package:uts_railway_clone/screens_here/GetFare.dart';
import 'package:uts_railway_clone/DropDownMenu/dropdown_menu.dart';
import 'package:uts_railway_clone/ticket_data.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

class GetFare extends StatefulWidget {
  const GetFare({Key? key}) : super(key: key);

  @override
  State<GetFare> createState() => _GetFareState();
}

class _GetFareState extends State<GetFare> {
  List<Ticket> selectedTickets = [];
  List<Ticket> _tickets = [];

  String selectedAdult = "ONE(1)";
  String selectedTicketType = "JOURNEY(J)";
  String selectedClass = "SECOND(II)";
  String selectedChild = "ZERO(0)";
  String selectedTrainType = "ORDINARY(O)";
  String selectedPaymentType = "RWALLET";
  //initiallized the ticket data
  Ticket ticket = Ticket();
  @override
  Map<String, dynamic> ticketsToJson(List<Ticket> tickets) {
    List<Map<String, dynamic>> ticketList = tickets.map((ticket) {
      return {
        'adult': ticket.adult,
        'ticketType': ticket.ticketType,
        'ticketClass': ticket.ticketClass,
        'child': ticket.child,
        'trainType': ticket.trainType,
        'paymentType': ticket.paymentType,
      };
    }).toList();

    return {'tickets': ticketList};
  }

  Widget build(BuildContext context) {
    final double wth = MediaQuery.of(context).size.width;
    final double hgt = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBarPage(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                width: 370,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 255, 129, 79),
                              Color.fromARGB(255, 255, 168, 97),
                            ],
                          ),
                        ),
                        height: 40,
                        width: 370,
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
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 150,
                                      child: CustomDropdownMenu(
                                        title: "Adult",
                                        items: [
                                          "ZERO(0)",
                                          "ONE(1)",
                                          "TWO(2)",
                                          "THREE(3)",
                                          "FOUR(4)"
                                        ],
                                        selectedItem: selectedAdult,
                                        onChanged: (String? value) {
                                          setState(() {
                                            selectedAdult = value ??
                                                "ONE(1)"; // Update selectedPaymentType
                                          });
                                          Ticket newTicket =
                                              Ticket(adult: value ?? "ONE(1)");
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 150,
                                      child: CustomDropdownMenu(
                                        title: "Ticket Type",
                                        items: ["JOURNEY(J)", "RETURN(R)"],
                                        selectedItem: selectedTicketType,
                                        onChanged: (String? value) {
                                          setState(() {
                                            selectedTicketType = value ??
                                                "JOURNEY(J)"; // Update selectedPaymentType
                                          });
                                          Ticket newTicket = Ticket(
                                              ticketType:
                                                  value ?? "JOURNEY(J)");
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 150,
                                      child: CustomDropdownMenu(
                                        title: "Class",
                                        items: ["SECOND(II)", "FIRST(FC)"],
                                        selectedItem: selectedClass,
                                        onChanged: (String? value) {
                                          setState(() {
                                            selectedClass = value ??
                                                "SECOND(II)"; // Update selectedPaymentType
                                          });
                                          Ticket newTicket = Ticket(
                                              ticketClass:
                                                  value ?? "SECOND(II)");
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 150,
                                      child: CustomDropdownMenu(
                                        title: "Child",
                                        items: [
                                          "ZERO(0)",
                                          "ONE(1)",
                                          "TWO(2)",
                                          "THREE(3)",
                                          "FOUR(4)"
                                        ],
                                        selectedItem: selectedChild,
                                        onChanged: (String? value) {
                                          setState(() {
                                            selectedChild = value ??
                                                "ZERO(0)"; // Update selectedPaymentType
                                          });
                                          Ticket newTicket =
                                              Ticket(child: value ?? "ZERO(0)");
                                          selectedTickets.add(newTicket);
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 150,
                                      child: CustomDropdownMenu(
                                        title: "Train Type",
                                        items: [
                                          "ORDINARY(O)",
                                          "AC EMU TRAIN(U)"
                                        ],
                                        selectedItem: selectedTrainType,
                                        onChanged: (String? value) {
                                          setState(() {
                                            selectedTrainType = value ??
                                                "ORDINARY(O)"; // Update selectedPaymentType
                                          });
                                          Ticket newTicket = Ticket(
                                              trainType:
                                                  value ?? "ORDINARY(O)");
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 150,
                                      child: CustomDropdownMenu(
                                        title: "Payment Type",
                                        items: [
                                          "RWALLET",
                                          "PAY USING :-UPI,DEBIT CARD,CREDIT CARD OR NET BANKING"
                                        ],
                                        selectedItem: selectedPaymentType,
                                        onChanged: (String? value) {
                                          setState(() {
                                            selectedPaymentType =
                                                value ?? "RWALLET";
                                          });
                                          Ticket newTicket = Ticket(
                                              paymentType: value ?? "RWALLET");
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                Map<String, dynamic> json = ticketsToJson(selectedTickets);

                // Get the documents directory
                final directory = await getApplicationSupportDirectory();

                // Define the file path within the documents directory
                String filePath = '${directory.path}/tickets.json';

                // Write the JSON data to the file
                final file = File(filePath);
                await file.writeAsString(jsonEncode(json));

                // Print the path where the file is saved
                print('JSON data saved to ${file.path}');
              },
              child: Text('Save JSON to File'),
            ),
            MyWid()
          ],
        ),
      ),
    );
  }
}
