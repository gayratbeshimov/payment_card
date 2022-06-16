import 'package:floor/floor.dart';
import 'package:payment_card/entity/entity.dart';

@dao
abstract class CardModel1{
  @Query('SELECT * FROM CardModel1 WHERE number=:number')
  Stream<List<CardModel1>> getAllItemInCartByUid(String number);

  @Query('SELECT * FROM CardModel1 WHERE number=:number AND name=:name')
  Future<CardModel1?> getItemInCartByUid(String number, String name);

  @Query('DELETE FROM CardModel1 WHERE number=:number')
  Stream<List<CardModel1>> deleteItemInCartByUid(String number);

  @insert
  Future<void> insertCart(CardModel1 cardModel1);

  @update
  Future<void> updateCart(CardModel1 cardModel1);

  @delete
  Future<void> deleteCart(CardModel1 cardModel1);


}