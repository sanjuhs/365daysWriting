import 'package:flutter/material.dart';
import 'package:myapp9_365dayswriting/widgets/navigation_bar.dart';

class UnderConstruction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Icon(
          Icons.construction,
          size: deviceWidth*0.2,
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
