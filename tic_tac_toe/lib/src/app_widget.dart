import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/views/pages/game_page.dart';
import 'package:tic_tac_toe/src/theme/app_colors.dart';

class AppWidet extends StatelessWidget {
  const AppWidet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: AppColors.primary),
      title: "Tic Tac Toe",
      home: GamePage(),
    );
  }
}
