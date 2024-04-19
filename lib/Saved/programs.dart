import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Programs extends StatelessWidget {
  const Programs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon((Icons.battery_0_bar)),
              Text("No Programs Yet"),
            ],
          )),
    );
  }
}
