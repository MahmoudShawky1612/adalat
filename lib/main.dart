import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'onboarding/on_boarding.dart';


void main()  {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: OnboardingScreen(),
    );
  }
}