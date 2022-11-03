part of 'home_bloc.dart';

enum Status {initial, choosing, removing, ready}
@immutable
class HomeState {
  final Status status;
  final List<Student> students;
  final int? rouletteSelectionIndex;
  final int? removeIndex;
  HomeState({required this.status, required this.students, this.rouletteSelectionIndex, this.removeIndex });

  HomeState copyWith({
    Status? status,
    List<Student>? students,
    int? removeIndex,
    int? rouletteSelectionIndex,
  }) => HomeState(status: status ?? this.status,
   students: students ?? this.students,
    rouletteSelectionIndex: rouletteSelectionIndex ?? this.rouletteSelectionIndex,
     removeIndex: removeIndex ?? this.removeIndex);
  
}

