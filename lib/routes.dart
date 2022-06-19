import 'package:flutter/widgets.dart';
import 'splash_screen/SplashScreen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
};
