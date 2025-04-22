import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/widgets/reset_btn.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    double fontsize = 24;
    return SizedBox(
      width: double.infinity,
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.settings, color: Colors.white, size: 35),

          ResetBtn(fontsize: fontsize),
        ],
      ),
    );
  }
}
