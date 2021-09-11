import 'package:flutter/material.dart';

class SingleCard extends StatefulWidget {
  final cardHeight, cardWidth;

  SingleCard({this.cardHeight, this.cardWidth});

  @override
  _SingleCardState createState() => _SingleCardState();
}

class _SingleCardState extends State<SingleCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.cardWidth,
      height: widget.cardHeight,
      child: Card(
        elevation: 5,
        color: Colors.black,
      ),
    );
  }
}