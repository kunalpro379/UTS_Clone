// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:uts_railway_clone/ShowTickData/show_tick_data.dart';
// import 'package:path_provider/path_provider.dart';
// import 'dart:convert';
// import 'dart:io';

// import 'package:path_provider/path_provider.dart';

// Future<List<TickData>> readJsonFromFile() async {
//   try {
//     final directory = await getApplicationSupportDirectory();
//     String filePath = '$directory/ticket_data.json';
//     final file = File(filePath);
//     String jsonString = await file.readAsString();
//     List<dynamic> jsonList = jsonDecode(jsonString);
//     List<TickData> tickets =
//         jsonList.map((json) => TickData.fromJson(json)).toList();
//     return tickets;
//   } catch (e) {
//     print("Error: $e");
//     return []; // Return an empty list in case of an error
//   }
// }

// class MyWid extends StatefulWidget {
//   const MyWid({super.key});

//   @override
//   State<MyWid> createState() => _MyWidState();
// }

// class _MyWidState extends State<MyWid> {
//   List<TickData> _tickets = [];
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () async {
//         List<TickData> tickets = await readJsonFromFile();
//         setState(() {
//           _tickets = tickets;
//         });
//       },
//       child: Text("Load Data"),
//     );
//   }
// }
