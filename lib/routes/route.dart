import 'package:flutter/material.dart';

import 'package:myapp9_365dayswriting/screens/cardinfo_screen.dart';
import 'package:myapp9_365dayswriting/screens/cardlist_screen.dart';
import 'package:myapp9_365dayswriting/screens/landing_screen.dart';
import 'package:myapp9_365dayswriting/screens/under_construction.dart';
import 'package:myapp9_365dayswriting/screens/writing_screen.dart';

//Route Names
const String cardInfoScreen = 'cardinfo_screen';
const String cardListScreen = 'cardlist_screen';
const String landingScreen = 'landing_screen';
const String loadingScreen = 'loading_screen';
const String underConstructionScreen = 'under_construction';
const String writingScreen = 'writing_screen';

//Controllers
Route<dynamic> controller(RouteSettings settings){
  switch(settings.name){
    case cardInfoScreen:
      return MaterialPageRoute(builder: (context) => CardInfoScreen());
    case cardListScreen:
      return MaterialPageRoute(builder: (context) => CardListScreen());
    case landingScreen:
      return MaterialPageRoute(builder: (context) => LandingScreen());
    case underConstructionScreen:
      return MaterialPageRoute(builder: (context) => UnderConstruction());
    case writingScreen:
      return MaterialPageRoute(builder: (context) =>  WritingScreen());
    default:{
      print('Invalid route, default case executing..');
      return MaterialPageRoute(builder: (context) => LandingScreen());
    }
      
  }
}