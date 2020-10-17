import 'package:flutter/material.dart';
import '../screens/notfound_screen.dart';
import '../screens/homeScreen/home_screen.dart';
import '../screens/settingScreen/setting_screen.dart';
import '../screens//formsScreen/forms_screen.dart';
import './route_names.dart';

class CustomRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch(settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen(),);
      case settingRoute:
        return MaterialPageRoute(builder: (_) => SettingScreen());
      case formsRoute:
        return MaterialPageRoute(builder: (_) => FormScreen());
    }
    return MaterialPageRoute(builder: (_) => NotFoundScreen());
  }
}
