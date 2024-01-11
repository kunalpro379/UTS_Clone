// tick_data.dart
import 'package:flutter/material.dart';
import 'package:uts_railway_clone/Widgets_Here/card_widgets.dart';

class TickData {
  final String fare;
  final String source;
  final String destination;
  final String via;
  final String adult_count;
  final String child_count;
  final String BookingDateAndTime;
  final String UTS_NO;
  final String className; // Fix the parameter name
  final String TickType; // Fix the parameter name

  const TickData({
    required this.TickType,
    required this.fare,
    required this.source,
    required this.destination,
    required this.via,
    required this.adult_count,
    required this.child_count,
    required this.BookingDateAndTime,
    required this.UTS_NO,
    required this.className, // Fix the parameter name
    Key? key, // Fix the syntax here
  });
}

class ShowTickData {
  final List<TickData> ticketDataList = [
    TickData(
        fare: "20.00",
        source: "Ambernath",
        destination: "KURLA JN.",
        via: "KYN",
        adult_count: "1",
        child_count: "0",
        BookingDateAndTime: "10/01/2024 14:04",
        UTS_NO: "X0RSDP6088",
        className: "SECOND(II)",
        TickType: "JOURNEY(M-TICKET)"),
    TickData(
        fare: "20.00",
        source: "Ambernath",
        destination: "KURLA JN.",
        via: "KYN",
        adult_count: "1",
        child_count: "0",
        BookingDateAndTime: "10/01/2024 14:04",
        UTS_NO: "X0RSDP6088",
        className: "SECOND(II)",
        TickType: "JOURNEY (M-TICKET)"),
    TickData(
        fare: "20.00",
        source: "Ambernath",
        destination: "KURLA JN.",
        via: "KYN",
        adult_count: "1",
        child_count: "0",
        BookingDateAndTime: "10/01/2024 14:04",
        UTS_NO: "X0RSDP6088",
        className: "SECOND(II)",
        TickType: "JOURNEY (M-TICKET)"),
    TickData(
        fare: "20.00",
        source: "Ambernath",
        destination: "KURLA JN.",
        via: "KYN",
        adult_count: "1",
        child_count: "0",
        BookingDateAndTime: "10/01/2024 14:04",
        UTS_NO: "X0RSDP6088",
        className: "SECOND(II)",
        TickType: "JOURNEY (M-TICKET)"),
    TickData(
        fare: "20.00",
        source: "Ambernath",
        destination: "KURLA JN.",
        via: "KYN",
        adult_count: "1",
        child_count: "0",
        BookingDateAndTime: "10/01/2024 14:04",
        UTS_NO: "X0RSDP6088",
        className: "SECOND(II)",
        TickType: "JOURNEY (M-TICKET)"),
    TickData(
        fare: "20.00",
        source: "Ambernath",
        destination: "KURLA JN.",
        via: "KYN",
        adult_count: "1",
        child_count: "0",
        BookingDateAndTime: "10/01/2024 14:04",
        UTS_NO: "X0RSDP6088",
        className: "SECOND(II)",
        TickType: "JOURNEY (M-TICKET)"),
    TickData(
        fare: "20.00",
        source: "Ambernath",
        destination: "KURLA JN.",
        via: "KYN",
        adult_count: "1",
        child_count: "0",
        BookingDateAndTime: "10/01/2024 14:04",
        UTS_NO: "X0RSDP6088",
        className: "SECOND(II)",
        TickType: "JOURNEY (M-TICKET)"),
    TickData(
        fare: "20.00",
        source: "Ambernath",
        destination: "KURLA JN.",
        via: "KYN",
        adult_count: "1",
        child_count: "0",
        BookingDateAndTime: "10/01/2024 14:04",
        UTS_NO: "X0RSDP6088",
        className: "SECOND(II)",
        TickType: "JOURNEY (M-TICKET)"),
    TickData(
        fare: "20.00",
        source: "Ambernath",
        destination: "KURLA JN.",
        via: "KYN",
        adult_count: "1",
        child_count: "0",
        BookingDateAndTime: "10/01/2024 14:04",
        UTS_NO: "X0RSDP6088",
        className: "SECOND(II)",
        TickType: "JOURNEY (M-TICKET)"),
  ];
}
