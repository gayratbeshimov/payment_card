// entity/person.dart

import 'package:floor/floor.dart';

@entity
class CardModel1 {
  @primaryKey
  String number;
  String name;
  String date;
  int imgNumber;
  CardModel1(this.name, this.number , this.date, this.imgNumber);
}
