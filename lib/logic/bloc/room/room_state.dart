part of 'room_bloc.dart';

enum Status {initial, choosing, promReady, ready}
@immutable
class RoomState {
  final Status status;
  final List<Student> students;
  RoomState({required this.status, required this.students});
  
}

