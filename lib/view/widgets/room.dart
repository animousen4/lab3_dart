import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lab3_dart/logic/bloc/room/home_bloc.dart';
import 'package:lab3_dart/view/widgets/lyrics_box.dart';
import 'package:lab3_dart/view/widgets/participant.dart';

class RoomWidget extends StatelessWidget {
  RoomWidget(
      {super.key,
      this.spacing = 50,
      required this.places,
      required this.builder,
      this.leftPlaces = 3,
      this.topPlaces = 3,
      this.rightPlaces = 4});
  final double spacing;
  final int leftPlaces;
  final int topPlaces;
  Widget Function(int index) builder;
  final int rightPlaces;
  final int places;
  //int get total => leftPlaces + topPlaces + rightPlaces;
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        int index = 0;
        return 
          Stack(
          children: [
            Align(alignment: Alignment.center, 
              child: LyricsBox(),
            ),
            Align(
                child: Wrap(
                  spacing: spacing,
                  direction: Axis.vertical,
                  
                  children: [ for ( ; index < leftPlaces; index++) builder(leftPlaces - 1 - index)],
                ),
                alignment: Alignment.centerLeft),

            Align(
                child: Wrap(
                  spacing: spacing,
                  direction: Axis.horizontal,
                  children: [for ( ; index < leftPlaces + topPlaces; index++) builder(index)],
                ),
                alignment: Alignment.topCenter),
            Align(
                child: Wrap(
                  spacing: spacing,
                  direction: Axis.vertical,
                  children: [for ( ; index < places; index++) builder(index)],
                ),
                alignment: Alignment.centerRight),
            //Align(child: Text("RIGHT"), alignment: Alignment.centerRight)
          ],
        );
      },
    );
  }
  

}
