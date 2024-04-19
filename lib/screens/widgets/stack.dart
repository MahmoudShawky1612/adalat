import 'package:flutter/material.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import '../search.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {


  List<String> shop = [
    'assets/images/OIP (3).jpg',
    'assets/images/OIP (3).jpg',
    'assets/images/OIP (3).jpg',
    'assets/images/OIP (3).jpg',
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Y.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 40.0,
              right: 20.0,
              child: IconButton(
                onPressed: () {
                  // Navigate to SearchScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchScreen()),
                  );
                },
                icon: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal.withOpacity(0.5),
                  ),
                  child: Icon(Icons.search, color: Colors.white, size: 25),
                ),
              ),
            ),
          ],
        ),

      ],
    );
  }
}
