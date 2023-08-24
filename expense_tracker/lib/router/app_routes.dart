import 'package:expense_tracker/presentation/screens/splash_screen.dart';
import 'package:expense_tracker/router/route_names.dart';
import 'package:flutter/material.dart';

import '../presentation/screens/home_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      RouteNames.homeScreen: (context) => HomeScreen(),
      RouteNames.splashScreen: (context) => const SplashScreen(),
      // Add more routes here
    };
  }
}