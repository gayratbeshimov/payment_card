part of 'card_bloc.dart';

@immutable
abstract class CardState {}

class CardInitial extends CardState {}

class CardPush extends CardState{
  final List<String> data;
  CardPush(this.data);
}
