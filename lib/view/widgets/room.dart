import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab3_dart/logic/bloc/room/room_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class RoomWidget extends StatelessWidget {
  RoomWidget(
      {super.key,
      this.spacing = 50,
      this.leftPlaces = 3,
      this.topPlaces = 3,
      this.rightPlaces = 4});
  final double spacing;
  final int leftPlaces;
  final int topPlaces;
  final int rightPlaces;
  int get total => leftPlaces + topPlaces + rightPlaces;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomBloc, RoomState>(
      builder: (context, state) {
        int index = 0;
        int places = state.students.length;
        return Stack(
          children: [
            Align(
                child: Wrap(
                  spacing: spacing,
                  direction: Axis.vertical,
                  
                  children: [for (int i = 0; i < leftPlaces && index < places; () {i++; index++;}) Text("$index")],
                ),
                alignment: Alignment.centerLeft),
            Align(
                child: Wrap(
                  spacing: spacing,
                  direction: Axis.horizontal,
                  children: [for (int i = 0; i < topPlaces && index < places; () {i++; index++;}) Text("$index")],
                ),
                alignment: Alignment.topCenter),
            Align(
                child: Wrap(
                  spacing: spacing,
                  direction: Axis.vertical,
                  children: [for (int i = 0; i < rightPlaces && index < places; () {i++; index++;}) Text("$index")],
                ),
                alignment: Alignment.centerRight),
            //Align(child: Text("RIGHT"), alignment: Alignment.centerRight)
          ],
        );
      },
    );
  }
}
