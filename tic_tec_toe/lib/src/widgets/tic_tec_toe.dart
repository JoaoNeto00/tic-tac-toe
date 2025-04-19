import 'package:flutter/material.dart';

class TicTecToe extends StatefulWidget {
  const TicTecToe({super.key});

  @override
  State<StatefulWidget> createState() {
    return TicTecToeState();
  }
}

class TicTecToeState extends State<TicTecToe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 390,
          height: 390,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35.0),
            color: Color(0XFFECEBF5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Square(), Square(), Square()],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Square(), Square(), Square()],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Square(), Square(), Square()],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Square extends StatelessWidget {
  const Square({super.key});

  @override
  build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0XFFDBD9EC),
      ),
      child: Center(child: Text("X", style: TextStyle(fontSize: 50))),
    );
  }
}
