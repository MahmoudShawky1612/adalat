import 'package:adalat/screens/search.dart';
import 'package:adalat/screens/widgets/excerciseswidget.dart';
import 'package:adalat/screens/widgets/programswidget.dart';
import 'package:adalat/screens/widgets/shopwidget.dart';
import 'package:adalat/screens/widgets/stack.dart';
import 'package:adalat/screens/widgets/workoutwidget.dart';
import 'package:flutter/material.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}
class _ExploreScreenState extends State<ExploreScreen> {

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              StackWidget(),
              WorkoutWidget(),
              programsWidget(),
              ExcercisesWidget(),
              ShopWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
