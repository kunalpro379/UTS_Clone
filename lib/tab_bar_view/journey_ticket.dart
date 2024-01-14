import 'package:flutter/material.dart';
import 'package:uts_railway_clone/tab_bar_view/common_tab_view.dart';

class JrnyTck extends StatelessWidget {
  const JrnyTck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: CommonTabView(),
      // height: 500,
      // child: Column(
      //   children: [
      //     Card(
      //         child: Container(
      //             decoration:
      //                 BoxDecoration(borderRadius: BorderRadius.circular(10)),
      //             child: Padding(
      //               padding: const EdgeInsets.only(right: 8.0),
      //               child: Row(
      //                 children: [Text("NORMAL BOOKING")],
      //               ),
      //             )))
      //   ],
      // ),
    ));
  }
}
