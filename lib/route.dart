import 'package:flutter/material.dart';
import 'package:rout/homepage1.dart';
import 'package:rout/homepage2.dart';

class Routers {
  static Route<dynamic> generateRoutePage(RouteSettings settings) {
    switch (settings.name) {
      case RoutePath.Homepage2:
        return MaterialPageRoute(builder: (context) => HomePage2());
      default:
        return MaterialPageRoute(builder: (context) => HomePage1());
    }
  }
}

class RoutePath {
  static const String HomePage1 = '/';
  static const String Homepage2 = '/homepage2';
}
