import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lab3_dart/logic/bloc/room/home_bloc.dart';
import 'package:lab3_dart/view/widgets/participant.dart';
import 'package:lab3_dart/view/widgets/room.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: Builder(builder: (context) {
        return BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            

          },
          builder: (context, state) {
            return Scaffold(
              body: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RoomWidget(
                      places: state.students.length,
                      builder: (i) => ParticipantWidget(
                        isSelected: state.rouletteSelectionIndex == i,
                      ),
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 1,
                            child: ElevatedButton(
                                onPressed: state.status == Status.initial ? () {
                                  context.read<HomeBloc>().add(StartRoulette());
                                } : null,
                                child: Text("Start"))),
                        Expanded(
                            flex: 18,
                            child: AnimatedList(
                              itemBuilder: (context, index, a) => ListTile(
                                  leading: SizedBox(
                                    width: 30,
                                    height: 70,
                                    child: state.rouletteSelectionIndex == index
                                        ? Container(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                          )
                                        : Placeholder(),
                                  ),
                                  title: Text("${state.students[index].name}")),
                              initialItemCount: state.students.length,
                            )),
                      ],
                    ),
                  ))
                ],
              ),
            );
          },
        );
      }),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
