import 'package:f_p_cn/routes/custom_routes.dart';
import 'package:f_p_cn/routes/route_names.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my cool app',
      initialRoute: homeRoute,
      onGenerateRoute: CustomRouter.allRoutes,
    );
  }
}
