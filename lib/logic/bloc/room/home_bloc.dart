import 'package:bloc/bloc.dart';

import 'package:lab3_dart/input/student_list_data.dart';
import 'package:lab3_dart/logic/model/entity/student.dart';
import 'package:lab3_dart/input/student_list_data.dart';
import 'package:meta/meta.dart';
part 'home_state.dart';
part 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState(status: Status.initial, students: studentsListData)) {
    on<StartRoulette>((event, emit) async {
      emit(state.copyWith(status: Status.choosing));
      String schitalochka = "1 2 3 4 5 6 7 8 9 10 11";
      int len = schitalochka.split(' ').length;
      int k = 0;
      for (int i = 0; i < len; i++){
        await Future.delayed(Duration(milliseconds: 300));
        if (k >=state.students.length) {
          k = 0;
        }
        emit(state.copyWith(rouletteSelectionIndex: k));
        
        k = k + 1;
      }
      print(k-1);

      //add(RemoveParticipant(k-1));
      emit(state.copyWith(status: Status.removing, removeIndex: k-1));
    });

    on<GoNext>((event, emit) {
      
    });

    on<RemoveParticipant>((event, emit) {

      var students = state.students;
      students.removeAt(event.removeIndex);
      emit(state.copyWith(
        rouletteSelectionIndex: -1,
        students: students
      ));
    });
  }
}
