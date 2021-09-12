import 'package:flutter/material.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp9_365dayswriting/routes/route.dart' as route;

class SingleCard extends StatefulWidget {
  final cardHeight, cardWidth;

  SingleCard({this.cardHeight, this.cardWidth});

  @override
  _SingleCardState createState() => _SingleCardState();
}

class _SingleCardState extends State<SingleCard> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final deviceWidth = mediaQuery.size.width;
    final deviceHeight = mediaQuery.size.height;

    return GestureDetector(
          child: Container(
        width: widget.cardWidth,
        height: widget.cardHeight,
        child: Card(
          elevation: 5,
          color: Colors.black,
          child: Stack(
            fit: StackFit.expand,
            children: [
              widget.cardWidth > 420 ? 
              Center(
                child: SvgPicture.asset(
                  'images/fox1bg.svg',
                  fit: BoxFit.fill,
                  width: 600,
                  
                ),
              )
              :
              Center(
                child: SvgPicture.asset(
                  'images/fox1bg.svg',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                left: 0.04*deviceWidth,
                right: 0.04*deviceWidth,
                child: Text(
                  '1 June',
                  style: TextStyle(color: Colors.white,fontSize: 0.05*deviceWidth),
                ),
              )
            ],
          ),
        ),
      ),
      onTap: () => Navigator.pushNamed(context, route.writingScreen)
    );
  }
}
