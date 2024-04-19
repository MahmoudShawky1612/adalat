import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login/login.dart';
import 'onboarding/on_boarding.dart';


void main()async   {

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool onboardingCompleted = prefs.getBool('onboardingCompleted') ?? false;

  runApp(MyApp(onboardingCompleted: onboardingCompleted));
}

class MyApp extends StatelessWidget {
  final bool onboardingCompleted;

  const MyApp({Key? key, required this.onboardingCompleted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: onboardingCompleted ? Login() : OnboardingScreen(), // Decide which screen to show
    );
  }
}