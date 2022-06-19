import 'package:flutter/material.dart';
import 'package:gallery_app/routes.dart';
import 'package:gallery_app/theme.dart';
import 'splash_screen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gallery App',
      theme: theme(),
      routes: routes,
      initialRoute: SplashScreen.routeName,
    );
  }
}