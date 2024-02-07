import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uts_railway_clone/ShowTickData/show_tick_data.dart';

class TicketD {
  String? adult;
  String? ticketType;
  String? ticketClass;
  String? child;
  String? trainType;
  String? paymentType;

  TicketD({
    this.adult,
    this.ticketType,
    this.ticketClass,
    this.child,
    this.trainType,
    this.paymentType,
  });

  factory TicketD.fromJson(Map<String, dynamic> json) {
    return TicketD(
      adult: json['adult'],
      ticketType: json['ticketType'],
      ticketClass: json['ticketClass'],
      child: json['child'],
      trainType: json['trainType'],
      paymentType: json['paymentType'],
    );
  }
}

Future<List<TicketD>> readJsonFromFile() async {
  try {
    final directory = await getApplicationSupportDirectory();
    String filePath = '${directory.path}/tickets.json';
    final file = File(filePath);
    if (!file.existsSync()) {
      print('JSON file does not exist.');
      return [];
    }
    String jsonString = await file.readAsString();
    Map<String, dynamic>? jsonData = jsonDecode(jsonString);
    if (jsonData == null || jsonData['tickets'] == null) {
      print('JSON data is null or does not contain tickets.');
      return [];
    }
    List<dynamic> jsonTickets = jsonData['tickets.json'];
    List<TicketD> tickets =
        jsonTickets.map((json) => TicketD.fromJson(json)).toList();
    return tickets;
  } catch (e) {
    print("Error: $e");
    return [];
  }
}

class MyWid extends StatefulWidget {
  const MyWid({Key? key}) : super(key: key);

  @override
  State<MyWid> createState() => _MyWidState();
}

class _MyWidState extends State<MyWid> {
  List<TicketD> _tickets = [];

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        List<TicketD> tickets = await readJsonFromFile();
        setState(() {
          _tickets = tickets;
        });
      },
      child: Text("Load Data"),
    );
  }
}
