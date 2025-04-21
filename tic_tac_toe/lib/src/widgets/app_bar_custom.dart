import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/theme/app_colors.dart';

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

          //button reset
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.only(left: 10, right: 10),
              minimumSize: Size.zero,
              elevation: 0,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),

            child: Text(
              "reset",
              style: TextStyle(
                color: AppColors.primary,
                fontSize: fontsize,
                //height: 1.4,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
