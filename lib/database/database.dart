import 'dart:async';
import 'package:floor/floor.dart';
import 'package:payment_card/entity/entity.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version: 1, entities: [CardModel1])
abstract class AppDatabase extends FloorDatabase {
  CardModel1 get cardModelDao;
}