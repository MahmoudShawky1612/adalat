import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Excercises extends StatelessWidget {
  const Excercises({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon((Icons.battery_0_bar)),
          Text("No Excercises Yet"),
        ],
      )),
    );
  }
}

















