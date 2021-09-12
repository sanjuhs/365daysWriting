import 'package:flutter/material.dart';
import 'package:myapp9_365dayswriting/widgets/navigation_bar.dart';
import 'package:myapp9_365dayswriting/widgets/text_editor.dart';



class WritingScreen extends StatefulWidget {
  @override
  _WritingScreenState createState() => _WritingScreenState();
}

class _WritingScreenState extends State<WritingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextEditor(key: const Key('sdf'),),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
