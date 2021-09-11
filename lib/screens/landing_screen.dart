import 'package:flutter/material.dart';
import 'package:myapp9_365dayswriting/widgets/card_viewer.dart';
import 'package:myapp9_365dayswriting/widgets/navigation_bar.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final deviceWidth = mediaQuery.size.width;
    final deviceHeight = mediaQuery.size.height;

    return Scaffold(
      body: CardViewer(),
      bottomNavigationBar: NavigationBar()
    );
  }
}
