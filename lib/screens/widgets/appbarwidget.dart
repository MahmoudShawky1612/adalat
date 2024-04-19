import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent, // Make AppBar transparent
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10),
        child: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/OIP (2).jpg',
          ),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20),
        child: Text("Welcome, Khaled !",
          style: TextStyle(
            color: Colors.white,
          ),),
      ),
    );
  }
}
