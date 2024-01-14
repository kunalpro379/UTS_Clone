import 'package:flutter/material.dart';
import 'package:uts_railway_clone/tab_bar_view/common_tab_view.dart';

class qbook extends StatelessWidget {
  const qbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: CommonTabView()),
    );
  }
}