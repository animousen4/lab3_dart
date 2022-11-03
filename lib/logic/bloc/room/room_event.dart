part of 'room_bloc.dart';

@immutable
abstract class RoomEvent {}

class StartRoulette extends RoomEvent {}

class GoNext extends RoomEvent {}
