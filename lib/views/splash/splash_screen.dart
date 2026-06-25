import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_nectar_ui_project/main.dart';
import 'package:new_nectar_ui_project/views/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF53B175),
      body: Center(
        child: Image.asset("assets/images/splash_screen_img/logo.png", width: 267,),
      ),
    );

    // return Scaffold(
    //   body: Container(
    //     width: double.infinity,
    //     height: double.infinity,
    //     color: Color(0xFF53B175),
    //
    //     child: Center(
    //       child: Image.asset("assets/images/splash_screen_img/logo.png", width: 267),
    //     ),
    //   ),
    // );
  }
}
