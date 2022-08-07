import 'package:flutter/material.dart';

import '../screens/error_screen.dart';
import '../screens/home_screen.dart';
import '../screens/second_screen.dart';
import '../screens/third_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routerSettings) {
    switch (routerSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => const HomeScreen(
                  title: "HomeScreen",
                  color: Colors.blueAccent,
                ));
      case '/second':
        return MaterialPageRoute(
            builder: (_) => const SecondScreen(
                  title: "SecondScreen",
                  color: Colors.redAccent,
                ));
      case '/third':
        return MaterialPageRoute(
            builder: (_) => const ThirdScreen(
                  title: "ThirdScreen",
                  color: Colors.greenAccent,
                ));
      default:
        return MaterialPageRoute(builder: (_) => const ErrorScreen());
    }
  }
}
