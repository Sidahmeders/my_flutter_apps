import 'package:flutter/material.dart';
import './route_names.dart';
import '../pages/home_page.dart';
import '../pages/ss_page.dart';
import '../pages/not_found.dart';


class CustomRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch(settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage(),);
      case ssRoute:
        return MaterialPageRoute(builder: (_) => SsPage());
    }
    return MaterialPageRoute(builder: (_) => NotFoundPage());
  }
}