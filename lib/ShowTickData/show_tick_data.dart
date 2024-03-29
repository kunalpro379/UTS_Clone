// tick_data.dart
import 'package:flutter/material.dart';

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
  final String TickType;
  final String onlyDate;
  final String Price;
  final String PhoneNo;
  final String TickType2;
  final String MarathiDest;
  final String MarathiSource;
  final String HindiSource;
  final String HindiDest;
  final String Csource;
  final String Ddest;
  final String MarathiClass;
  final String HindiClass;
  final String HTrainTyp;
  final String MTrainTyp;
  final String CTrainTyp;
  final String CClass;
  //final String
  final String distance;
  final String NextDate;
  final String BookingDateTime;
  final String ID;
  final String IR;
  final String SAC;

  const TickData({
    required this.PhoneNo,
    required this.Price,
    required this.TickType,
    required this.onlyDate,
    required this.fare,
    required this.source,
    required this.destination,
    required this.via,
    required this.adult_count,
    required this.child_count,
    required this.BookingDateAndTime,
    required this.UTS_NO,
    required this.className,
    required this.TickType2,
    required this.MarathiDest,
    required this.MarathiSource,
    required this.HindiSource,
    required this.HindiDest,
    required this.Csource,
    required this.Ddest,
    required this.MarathiClass,
    required this.HindiClass,
    required this.HTrainTyp,
    required this.MTrainTyp,
    required this.CTrainTyp,
    required this.CClass,
    required this.SAC,
    required this.IR,
    required this.ID,
    required this.BookingDateTime,
    required this.NextDate,
    required this.distance,
// Fix the parameter name
    Key? key, // Fix the syntax here
  });
}

class ShowTickData {
  final List<TickData> ticketDataList = [
    TickData(
      NextDate: "11/01/2024",
      BookingDateTime: "10/01/2024 06:55",
      distance: "90 km",
      ID: "R17023",
      IR: "27AAAGM0289C2ZI",
      SAC: "996411",
      HindiClass: "द्वि श्रे",
      MarathiClass: "द्वितीय ",
      HTrainTyp: "साधारण ",
      MTrainTyp: "साधारण ",
      CClass: "SECOND",
      CTrainTyp: "ORDINARY",
      Ddest: "KURLA JN.",
      TickType2: "JOURNEY",
      PhoneNo: "9892885090",
      Price: "20.00/-",
      onlyDate: "10/01/2024",
      fare: "20.00",
      source: "Ambernath",
      destination: "KURLA JN.",
      via: "KYN",
      adult_count: "1",
      child_count: "0",
      BookingDateAndTime: "10/01/2024 14:04",
      UTS_NO: "X0RSDP6088",
      className: "SECOND(II)",
      TickType: "JOURNEY(M-TICKET)",
      MarathiDest: "कुर्ला",
      MarathiSource: "अंबरनाथ",
      HindiSource: "अंबरनाथ",
      HindiDest: "कुर्ला ज ",
      Csource: "AMBERNATH",
    ),
    TickData(
      NextDate: "15/01/2024",
      BookingDateTime: "15/01/2024 06:55",
      distance: "90 km",
      ID: "R17033",
      IR: "29AAAGM0289C2PI",
      SAC: "976413",
      HindiClass: "द्वि श्रे",
      MarathiClass: "द्वितीय ",
      HTrainTyp: "साधारण ",
      MTrainTyp: "साधारण ",
      CClass: "SECOND",
      CTrainTyp: "ORDINARY",
      Ddest: "KURLA JN.",
      //Ddest: "KURLA JN.",
      TickType2: "RETURN",
      PhoneNo: "9892885090",
      Price: "30.00/-",
      onlyDate: "15/01/2024",
      fare: "30.00",
      source: "Ambernath",
      destination: "KURLA JN.",
      via: "KYN",
      adult_count: "1",
      child_count: "0",
      BookingDateAndTime: "15/01/2024 06:55",
      UTS_NO: "X0RSDP60988",
      className: "SECOND(II)",
      TickType: "RETURN (M-TICKET)",
      MarathiDest: "कुर्ला",
      MarathiSource: "अंबरनाथ",
      HindiSource: "अंबरनाथ",
      HindiDest: "कुर्ला ज ",
      Csource: "AMBERNATH",
    ),
    TickData(
      NextDate: "11/01/2024",
      BookingDateTime: "10/01/2024 06:55",
      distance: "90 km",
      ID: "R17023",
      IR: "27AAAGM0289C2ZI",
      SAC: "996411",
      HindiClass: "द्वि श्रे",
      MarathiClass: "द्वितीय ",
      HTrainTyp: "साधारण ",
      MTrainTyp: "साधारण ",
      CClass: "SECOND",
      CTrainTyp: "ORDINARY",
      Ddest: "KURLA JN.",
      //Ddest: "KURLA JN.",
      TickType2: "JOURNEY",
      PhoneNo: "9892885090",
      Price: "20.00/-",
      onlyDate: "10/01/2024",
      fare: "20.00",
      source: "Ambernath",
      destination: "KURLA JN.",
      via: "KYN",
      adult_count: "1",
      child_count: "0",
      BookingDateAndTime: "10/01/2024 14:04",
      UTS_NO: "X0RSDP6088",
      className: "SECOND(II)",
      TickType: "JOURNEY (M-TICKET)",
      MarathiDest: "कुर्ला",
      MarathiSource: "अंबरनाथ",
      HindiSource: "अंबरनाथ",
      HindiDest: "कुर्ला ज ",
      Csource: "AMBERNATH",
    ),
    TickData(
      NextDate: "11/01/2024",
      BookingDateTime: "10/01/2024 06:55",
      distance: "90 km",
      ID: "R17023",
      IR: "27AAAGM0289C2ZI",
      SAC: "996411",
      HindiClass: "द्वि श्रे",
      MarathiClass: "द्वितीय ",
      HTrainTyp: "साधारण ",
      MTrainTyp: "साधारण ",
      CClass: "SECOND",
      CTrainTyp: "ORDINARY",
      Ddest: "KURLA JN.",
      //Ddest: "KURLA JN.",
      TickType2: "JOURNEY",
      PhoneNo: "9892885090",
      Price: "20.00/-",
      onlyDate: "10/01/2024",
      fare: "20.00",
      source: "Ambernath",
      destination: "KURLA JN.",
      via: "KYN",
      adult_count: "1",
      child_count: "0",
      BookingDateAndTime: "10/01/2024 14:04",
      UTS_NO: "X0RSDP6088",
      className: "SECOND(II)",
      TickType: "JOURNEY (M-TICKET)",
      MarathiDest: "कुर्ला",
      MarathiSource: "अंबरनाथ",
      HindiSource: "अंबरनाथ",
      HindiDest: "कुर्ला ज ",
      Csource: "AMBERNATH",
    ),
    TickData(
      NextDate: "11/01/2024",
      BookingDateTime: "10/01/2024 06:55",
      distance: "90 km",
      ID: "R17023",
      IR: "27AAAGM0289C2ZI",
      SAC: "996411",
      HindiClass: "द्वि श्रे",
      MarathiClass: "द्वितीय ",
      HTrainTyp: "साधारण ",
      MTrainTyp: "साधारण ",
      CClass: "SECOND",
      CTrainTyp: "ORDINARY",
      Ddest: "KURLA JN.",
      //Ddest: "KURLA JN.",
      TickType2: "JOURNEY",
      PhoneNo: "9892885090",
      Price: "20.00/-",
      fare: "20.00",
      source: "Ambernath",
      destination: "KURLA JN.",
      via: "KYN",
      adult_count: "1",
      child_count: "0",
      onlyDate: "10/01/2024",
      BookingDateAndTime: "10/01/2024 14:04",
      UTS_NO: "X0RSDP6088",
      className: "SECOND(II)",
      TickType: "JOURNEY (M-TICKET)",
      MarathiDest: "कुर्ला",
      MarathiSource: "अंबरनाथ",
      HindiSource: "अंबरनाथ",
      HindiDest: "कुर्ला ज ",
      Csource: "AMBERNATH",
    ),
    TickData(
      NextDate: "11/01/2024",
      BookingDateTime: "10/01/2024 06:55",
      distance: "90 km",
      ID: "R17023",
      IR: "27AAAGM0289C2ZI",
      SAC: "996411",
      HindiClass: "द्वि श्रे",
      MarathiClass: "द्वितीय ",
      HTrainTyp: "साधारण ",
      MTrainTyp: "साधारण ",
      CClass: "SECOND",
      CTrainTyp: "ORDINARY",
      Ddest: "KURLA JN.",
      //Ddest: "KURLA JN.",
      TickType2: "JOURNEY",
      PhoneNo: "9892885090",
      Price: "20.00/-",
      onlyDate: "10/01/2024",
      fare: "20.00",
      source: "Ambernath",
      destination: "KURLA JN.",
      via: "KYN",
      adult_count: "1",
      child_count: "0",
      BookingDateAndTime: "10/01/2024 14:04",
      UTS_NO: "X0RSDP6088",
      className: "SECOND(II)",
      TickType: "JOURNEY (M-TICKET)",
      MarathiDest: "कुर्ला",
      MarathiSource: "अंबरनाथ",
      HindiSource: "अंबरनाथ",
      HindiDest: "कुर्ला ज ",
      Csource: "AMBERNATH",
    ),
    TickData(
      NextDate: "11/01/2024",
      BookingDateTime: "10/01/2024 06:55",
      distance: "90 km",
      ID: "R17023",
      IR: "27AAAGM0289C2ZI",
      SAC: "996411",
      HindiClass: "द्वि श्रे",
      MarathiClass: "द्वितीय ",
      HTrainTyp: "साधारण ",
      MTrainTyp: "साधारण ",
      CClass: "SECOND",
      CTrainTyp: "ORDINARY",
      Ddest: "KURLA JN.",
      //Ddest: "KURLA JN.",
      TickType2: "JOURNEY",
      PhoneNo: "9892885090",
      Price: "20.00/-",
      onlyDate: "10/01/2024",
      fare: "20.00",
      source: "Ambernath",
      destination: "KURLA JN.",
      via: "KYN",
      adult_count: "1",
      child_count: "0",
      BookingDateAndTime: "10/01/2024 14:04",
      UTS_NO: "X0RSDP6088",
      className: "SECOND(II)",
      TickType: "JOURNEY (M-TICKET)",
      MarathiDest: "कुर्ला",
      MarathiSource: "अंबरनाथ",
      HindiSource: "अंबरनाथ",
      HindiDest: "कुर्ला ज ",
      Csource: "AMBERNATH",
    ),
    TickData(
      NextDate: "11/01/2024",
      BookingDateTime: "10/01/2024 06:55",
      distance: "90 km",
      ID: "R17023",
      IR: "27AAAGM0289C2ZI",
      SAC: "996411",
      HindiClass: "द्वि श्रे",
      MarathiClass: "द्वितीय ",
      HTrainTyp: "साधारण ",
      MTrainTyp: "साधारण ",
      CClass: "SECOND",
      CTrainTyp: "ORDINARY",
      Ddest: "KURLA JN.",
      //Ddest: "KURLA JN.",
      TickType2: "JOURNEY",
      PhoneNo: "9892885090",
      Price: "20.00/-",
      onlyDate: "10/01/2024",
      fare: "20.00",
      source: "Ambernath",
      destination: "KURLA JN.",
      via: "KYN",
      adult_count: "1",
      child_count: "0",
      BookingDateAndTime: "10/01/2024 14:04",
      UTS_NO: "X0RSDP6088",
      className: "SECOND(II)",
      TickType: "JOURNEY (M-TICKET)",
      MarathiDest: "कुर्ला",
      MarathiSource: "अंबरनाथ",
      HindiSource: "अंबरनाथ",
      HindiDest: "कुर्ला ज ",
      Csource: "AMBERNATH",
    ),
    TickData(
      NextDate: "11/01/2024",
      BookingDateTime: "10/01/2024 06:55",
      distance: "90 km",
      ID: "R17023",
      IR: "27AAAGM0289C2ZI",
      SAC: "996411",
      HindiClass: "द्वि श्रे",
      MarathiClass: "द्वितीय ",
      HTrainTyp: "साधारण ",
      MTrainTyp: "साधारण ",
      CClass: "SECOND",
      CTrainTyp: "ORDINARY",
      Ddest: "KURLA JN.",
      //Ddest: "KURLA JN.",
      TickType2: "JOURNEY",
      PhoneNo: "9892885090",
      Price: "20.00/-",
      onlyDate: "10/01/2024",
      fare: "20.00",
      source: "Ambernath",
      destination: "KURLA JN.",
      via: "KYN",
      adult_count: "1",
      child_count: "0",
      BookingDateAndTime: "10/01/2024 14:04",
      UTS_NO: "X0RSDP6088",
      className: "SECOND(II)",
      TickType: "JOURNEY (M-TICKET)",
      MarathiDest: "कुर्ला",
      MarathiSource: "अंबरनाथ",
      HindiSource: "अंबरनाथ",
      HindiDest: "कुर्ला ज ",
      Csource: "AMBERNATH",
    ),
  ];
}
