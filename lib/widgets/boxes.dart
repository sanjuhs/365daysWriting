import 'package:hive/hive.dart';
import 'package:myapp9_365dayswriting/models/carddata.dart';


class Boxes{
  static Box<CardData> getData() => 
  Hive.box<CardData>('cardData');
}