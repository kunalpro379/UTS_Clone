import 'package:flutter/material.dart';
import 'package:uts_railway_clone/tab_bar_view/common_tab_view.dart';

class PltFtck extends StatelessWidget {
  const PltFtck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 130,
              child: CommonTabView(),
              color: Colors.yellow,
            ),
            Container(
              height: 600, // Example height, adjust as needed
              color: Colors.blue, // Example color
              child: Center(
                child: Text(
                  'Additional content here',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
