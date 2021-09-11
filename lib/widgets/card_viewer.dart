import 'package:flutter/material.dart';
import 'package:myapp9_365dayswriting/widgets/single_card.dart';

class CardViewer extends StatefulWidget {
  @override
  _CardViewerState createState() => _CardViewerState();
}

class _CardViewerState extends State<CardViewer> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final deviceWidth = mediaQuery.size.height;
    final deviceHeight = mediaQuery.size.height;

    return Center(
      child: SizedBox(
          height: deviceHeight*0.6,
          child: PageView.builder(
            itemCount: 10,
            controller: PageController(viewportFraction: 0.7),
            onPageChanged: (int index) => setState(() => _index = index),
            itemBuilder: (_, i) {
              return Transform.scale(
                scale: i == _index ? 1 : 0.9,
                child: SingleCard(cardWidth: deviceWidth*0.4,cardHeight: deviceHeight*0.4,),
              );
            },
          )),
    );
  }
}
