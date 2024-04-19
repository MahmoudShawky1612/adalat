import 'package:adalat/screens/widgets/appbarwidget.dart';
import 'package:adalat/screens/widgets/calenderwidget.dart';
import 'package:adalat/screens/widgets/mylibrary.dart';
import 'package:flutter/material.dart';


class TodayScreen extends StatefulWidget {
  const TodayScreen({super.key});

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:const Size.fromHeight(60),
          child: Container(
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0)),
              color: Colors.teal, // Set the background color of the AppBar here
            ),
            child:const AppBarWidget(),
          ),
        ),
        body:const  SingleChildScrollView(
          child: Column(
            children: [
              CalenderWidget(),
              MyLibrary(),
              ],
          ),
        ),
      ),
    );
  }
}
