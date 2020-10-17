import 'package:flutter/material.dart';
import 'package:s_m/routes/custom_router.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'scoped_model',
      onGenerateRoute: CustomRouter.allRoutes,
    );
  }
}
