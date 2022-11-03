import 'package:flutter/material.dart';
import 'package:lab3_dart/view/screen/home/home_screen.dart';
import 'package:lab3_dart/view/theme/app_theme.dart';
import 'package:lab3_dart/view/widgets/room.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      home: HomeScreen(),
    );
  }
}
