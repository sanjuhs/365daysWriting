import 'package:hive/hive.dart';

part 'carddata.g.dart';

@HiveType(typeId: 0)
class CardData extends HiveObject{
  @HiveField(0)
  late String date;

  @HiveField(1)
  late String jsonText;

  @HiveField(2)
  late int wordCount;

  @HiveField(3)
  late String level;
}

