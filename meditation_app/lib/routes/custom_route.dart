import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/bross.dart';
import '../pages/cup.dart';
import '../pages/protas.dart';
import '../pages/snan.dart';
import './named_route.dart';

class CustomRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch(settings.name) {
      case homeR:
        return MaterialPageRoute(builder: (_) => HomePage());
      case brossR:
        return MaterialPageRoute(builder: (_) => Bross());
      case protasR:
        return MaterialPageRoute(builder: (_) => Protas());
      case snanR:
        return MaterialPageRoute(builder: (_) => Snan());
      case cupR:
        return MaterialPageRoute(builder: (_) => Cup());
    }
    return MaterialPageRoute(builder: (_) => NotFoundPage());
  }
}


class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('not found'),);
  }
}
