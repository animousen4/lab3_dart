part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class StartRoulette extends HomeEvent {}

class GoNext extends HomeEvent {}

class RemoveParticipant extends HomeEvent {
  final int removeIndex;

  RemoveParticipant(this.removeIndex);
}