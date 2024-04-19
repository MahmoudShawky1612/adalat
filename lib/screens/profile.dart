import 'dart:typed_data';

import 'package:adalat/screens/widgets/profilepicwidget.dart';
import 'package:adalat/screens/widgets/yourfitnessprofile.dart';
import 'package:adalat/screens/widgets/yourprofilewidget.dart';
import 'package:adalat/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: Colors.grey[300],

      body:const SingleChildScrollView(
        child: Column(
          children:
          [
            ProfilePicWidget(),
            YourProfileWidget(),
            YourFitnessProfileWidget(),
            ]
      ),
      ),
    );
  }
}


