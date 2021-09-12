import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:myapp9_365dayswriting/routes/route.dart' as route;
import 'package:myapp9_365dayswriting/screens/writing_screen.dart';
import 'package:myapp9_365dayswriting/widgets/decription.dart';

class SingleCard extends StatefulWidget {
  final cardHeight, cardWidth, dateString, imgPath, scfName, description;

  SingleCard(
      {this.cardHeight,
      this.cardWidth,
      this.dateString,
      this.imgPath,
      this.scfName,
      this.description});

  @override
  _SingleCardState createState() => _SingleCardState();
}

class _SingleCardState extends State<SingleCard> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final deviceWidth = mediaQuery.size.width;
    final deviceHeight = mediaQuery.size.height;

    DateTime temp = DateTime.parse(widget.dateString);
    String date = DateFormat('d-MMM-y').format(temp);
    date = date.split("-").join(" ");

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          child: Container(
            width: widget.cardWidth,
            height: widget.cardHeight,
            child: Card(
              elevation: 5,
              color: Colors.black,
              child: Stack(
                // fit: StackFit.expand,
                children: [
                  widget.cardWidth > 420
                      ? Center(
                          child: SvgPicture.asset(
                            'assets/images/' + widget.imgPath,
                            fit: BoxFit.fill,
                            width: 600,
                          ),
                        )
                      : Center(
                          child: SvgPicture.asset(
                            'assets/images/' + widget.imgPath,
                            fit: BoxFit.fill,
                          ),
                        ),
                  Positioned(
                    left: 0.04 * deviceWidth,
                    top: 0.04 * deviceWidth,
                    child: Text(
                      date,
                      style: TextStyle(
                          color: Colors.white, fontSize: 0.05 * deviceWidth),
                    ),
                  )
                ],
              ),
            ),
          ),
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => WritingScreen(
                dateString: widget.dateString,
              ),
            ),
          ),
        ),
        // SizedBox(height: deviceWidth*0.07,),
        Description(
          scfName: widget.scfName,
          desc: widget.description,
        ),
      ],
    );
  }
}
