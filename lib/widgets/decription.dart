import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String scfName;
  final String desc;

  Description({required this.scfName, required this.desc});

  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);

    final deviceWidth = mediaQuery.size.width;
    final deviceHeight = mediaQuery.size.height;

    return
    deviceWidth < 420 ?
     Column(children: [
      Text(scfName, style: Theme.of(context).textTheme.bodyText2,),
      Text(desc, style: Theme.of(context).textTheme.bodyText2,),
    ]):
     Column(children: [
      Text(scfName, style: Theme.of(context).textTheme.headline2,),
      Text(desc, style: Theme.of(context).textTheme.headline2,)
     ]);
  }
}
