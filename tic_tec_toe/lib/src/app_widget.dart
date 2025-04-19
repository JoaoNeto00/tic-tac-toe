import 'package:flutter/material.dart';
import 'package:tic_tec_toe/src/pages/game_page.dart';

class AppWidet extends StatelessWidget {
  const AppWidet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Tic Tec Toe", home: GamePage());
  }
}
