import 'package:flutter/material.dart';
import 'package:s_m/screens/home_page.dart';
import 'package:s_m/screens/notfound_page.dart';
import 'package:s_m/screens/page_one.dart';
import 'package:s_m/screens/page_three.dart';
import 'package:s_m/screens/page_two.dart';
import './route_names.dart';

class CustomRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch(settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case page1:
        return MaterialPageRoute(builder: (_) => PageOne());
      case page2:
        return MaterialPageRoute(builder: (_) => PageTwo());
      case page3:
        return MaterialPageRoute(builder: (_) => PageThree());
    }
    return MaterialPageRoute(builder: (_) => NotFoundPage());
  }
}
