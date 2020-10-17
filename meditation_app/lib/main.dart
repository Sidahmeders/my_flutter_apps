import 'package:flutter/material.dart';
import 'package:meditation_app/routes/custom_route.dart';
import 'package:meditation_app/routes/named_route.dart';
import 'package:meditation_app/utils/constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: c_BackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: c_TextColor),
      ),
      initialRoute: protasR,
      onGenerateRoute: CustomRouter.allRoutes,
    );
  }
}
