import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myapp9_365dayswriting/models/carddata.dart';
import 'package:myapp9_365dayswriting/widgets/boxes.dart';
import 'package:myapp9_365dayswriting/widgets/navigation_bar.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:myapp9_365dayswriting/widgets/upper_bar.dart';
import 'package:myapp9_365dayswriting/routes/route.dart' as route;

class WritingScreen extends StatefulWidget {
  final String dateString;
  WritingScreen({required this.dateString});

  @override
  _WritingScreenState createState() => _WritingScreenState();
}

QuillController _controller = QuillController.basic();

class _WritingScreenState extends State<WritingScreen> {
  @override
  void initState() {
    //Read from database to see if anything exists
    final myBox = Boxes.getData();
    print(widget.dateString);
    final myCardData = myBox.get(widget.dateString);

    

    if (myCardData != null) {
      var myJSON = jsonDecode(myCardData.jsonText);
      print(myJSON);
      _controller = QuillController(
          document: Document.fromJson(myJSON),
          selection: TextSelection.collapsed(offset: 0));
    }
    else{
      //if nothing is found under that date, insert empty doc
      var myJSON = [{"insert":"\n"}];
      _controller = QuillController(
          document: Document.fromJson(myJSON),
          selection: TextSelection.collapsed(offset: 0));
    }
  }

  @override
  void dispose() {
    print('disposing Hive..');
    Hive.box('cardData').close();
    super.dispose();
  }

  void saveText() {
    String jsonText = jsonEncode(_controller.document.toDelta().toJson());
    int wordCount = _controller.document.toString().split(' ').length;
    String level = 'Novice';
    print(_controller.document.toDelta());
    print(_controller.document.toString().split(' ').length);

    final cardDataTemplate = CardData()
      ..date = widget.dateString
      ..jsonText = jsonText
      ..wordCount = wordCount
      ..level = level;

    //write to hive box with specific unique key
    final box = Boxes.getData();
    box.put(widget.dateString, cardDataTemplate);

    print(widget.dateString);

    //retrieve the data through key (Read operation)
    final myBox = Boxes.getData();
    final myCardData = myBox.get(widget.dateString);

    print(myCardData!.jsonText);

    Navigator.pushNamed(context, route.landingScreen);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            UpperBar(saveHandler: saveText),
            Expanded(
              child: Container(
                child: QuillEditor.basic(
                  controller: _controller,
                  readOnly: false,
                ),
              ),
            ),
            QuillToolbar.basic(
              controller: _controller,
              showVideoButton: false,
              showImageButton: false,
              multiRowsDisplay: false,
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(),
      ),
    );
  }
}
