import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lab3_dart/logic/bloc/room/room_bloc.dart';
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
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocProvider(
              create: (context) => RoomBloc(),
              child: RoomWidget(),
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
                  child: ElevatedButton(onPressed: () {}, child: Text("Start")),
                ),
                Expanded(
                  flex: 18,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                    itemBuilder: (context, index) => ListTile(
                        leading: SizedBox(
                          width: 30,
                          height: 70,
                          child: Placeholder(),
                        ),
                        title: Text("Participant $index")),
                    itemCount: 10,
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
