import 'package:flutter/material.dart';
import 'package:myapp9_365dayswriting/providers/cards_provider.dart';
import 'package:provider/provider.dart';

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

    var cardsInfoData = Provider.of<CardsProvider>(context);
    var cardsInfoList = cardsInfoData.cardListByMonth;

    return Center(
      child: SizedBox(
          height: deviceHeight * 1,
          child: PageView.builder(
            itemCount: cardsInfoList.length,
            controller: PageController(viewportFraction: 0.7),
            onPageChanged: (int index) => setState(() => _index = index),
            itemBuilder: (_, i) {
              return Transform.scale(
                scale: i == _index ? 1 : 0.9,
                child: SingleCard(
                  cardWidth: deviceWidth * 0.6,
                  cardHeight: deviceHeight * 0.6,
                  dateString: cardsInfoList[i]["date"],
                  imgPath: cardsInfoList[i]["imgPath"],
                  scfName: cardsInfoList[i]["scfName"],
                  description: cardsInfoList[i]["description"],
                ),
              );
            },
          )),
    );
  }
}
