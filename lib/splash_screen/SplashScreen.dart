import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gallery_app/HomeScreen/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  void navigateToHome() {
    Timer(const Duration(seconds: 5), ()=> Navigator.of(context).pushReplacementNamed(HomeScreen.routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
      ),
    );
  }
}
