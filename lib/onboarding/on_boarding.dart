import 'dart:async';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../login/login.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<String> imageUrls = [
    'assets/images/240_F_95663420_jUqXnTVfVZKCg7kO5AL9h67loWf4jm9J.jpg',
    'assets/images/240_F_135206254_mTvO2ILpNYe3NIAIJ8pHbrcJ1tyXJ7Bv.jpg',
    'assets/images/240_F_317724748_eNcpWptTATeRL6wzrC1zPWV810FXGQ5k.jpg'
  ];

  final SwiperController _controller = SwiperController();
  Timer? _timer;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      if (_currentIndex < imageUrls.length - 1) {
        _controller.next();
      } else {
        _timer?.cancel();
        // Navigate to next screen after the last image
      }
      _currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Swiper(
            controller: _controller,
            itemCount: imageUrls.length,
            loop: false,
            pagination: SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                activeColor: Colors.white,
                color: Colors.grey,
              ),
            ),
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: [
                  Image.asset(
                    imageUrls[index],
                    fit: BoxFit.scaleDown,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.3),
                  ),
                ],
              );
            },
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: ElevatedButton(

              onPressed: () {
                _controller.next();
              },
              child: Text('Next',
              style: TextStyle(color: Colors.black),

              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 260,
            child: ElevatedButton(
              onPressed: () {
                _timer?.cancel();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text('Skip',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
