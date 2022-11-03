import 'package:bloc/bloc.dart';
import 'package:lab3_dart/logic/model/entity/student.dart';
import 'package:meta/meta.dart';

part 'room_event.dart';
part 'room_state.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  RoomBloc() : super(RoomState(status: Status.initial, students: [Student(name: "Kirito"), Student(name: "Konya"), Student(name: "Colt"),])) {
    on<StartRoulette>((event, emit) {
      
    });

    on<GoNext>((event, emit) {
      
    });
  }
}
