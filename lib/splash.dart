import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoes/onboarding_screen.dart';
// import 'package:shoes/onboard1.dart';
class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  @override
  void initState() {
    Timer(Duration(seconds: 3),
      ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) =>onboarding_screen(),))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/Splash1.jpg',height:double.maxFinite,width: double.maxFinite,),
    );
  }
}
