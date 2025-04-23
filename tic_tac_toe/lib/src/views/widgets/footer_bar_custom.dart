import 'package:flutter/material.dart';

class FooterBarCustom extends StatelessWidget {
  const FooterBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    double fontsize = 26;
    return SizedBox(
      width: double.infinity,
      height: 90,
      //margin: EdgeInsets.only(top: 35),
      //padding: EdgeInsets.only(left: 25, right: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 14, right: 14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "0",
                  style: TextStyle(
                    color: Color(0xFF3D329A),
                    fontSize: fontsize,
                    height: 1.4,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              //button user
              Container(
                padding: EdgeInsets.only(left: 14, right: 14),
                child: Text(
                  "You",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fontsize,
                    height: 1.4,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),

          //button 3
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(left: 14, right: 14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "0",
                  style: TextStyle(
                    color: Color(0xFF3D329A),
                    fontSize: fontsize,
                    height: 1.4,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              //button AI
              Container(
                padding: EdgeInsets.only(left: 14, right: 14),
                child: Text(
                  "AI",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fontsize,
                    height: 1.4,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
