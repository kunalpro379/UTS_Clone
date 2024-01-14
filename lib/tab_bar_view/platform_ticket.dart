import 'package:flutter/material.dart';
import 'package:uts_railway_clone/tab_bar_view/common_tab_view.dart';

class PltFtck extends StatelessWidget {
  const PltFtck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: CommonTabView()),
    );
  }
}
