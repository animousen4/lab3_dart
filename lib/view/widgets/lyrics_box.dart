import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lab3_dart/logic/bloc/room/home_bloc.dart';

class LyricsBox extends StatelessWidget {
  const LyricsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SizedBox(
          width: 270,
          child: Text(
            "AAAAA",
            style: Theme.of(context).textTheme.headline3,
          ),
        );
      },
    );
  }
}
