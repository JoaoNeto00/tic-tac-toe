import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/src/app_widget.dart';
import 'package:tic_tac_toe/src/controllers/game_controller.dart';

void main(List<String> args) {
  runApp(
    ChangeNotifierProvider(
      create: (_) => GameController(),
      child: const AppWidet(),
    ),
  );
}
