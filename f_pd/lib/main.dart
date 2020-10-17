import 'package:f_pd/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './flavor.dart';

void main() => runApp(
  Provider<Flavor>.value(
    value: Flavor.dev,
    child: MyApp()
  )
);
