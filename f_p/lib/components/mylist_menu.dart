import 'package:flutter/material.dart';
import '../routes/route_names.dart';

class MyMenuItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          elevation: 20,
          child: ListTile(
            title: Text('Home screen'),
            onTap: () => Navigator.pushNamed(context, homeRoute),
          ),
        ),
        Card(
          elevation: 20,
          child: ListTile(
            title: Text('form screen'),
            onTap: () => Navigator.pushNamed(context, formsRoute),
          ),
        ),
         Card(
          elevation: 20,
          child: ListTile(
            title: Text('setting screen'),
            onTap: () => Navigator.pushNamed(context, settingRoute),
          ),
        ),
      ],
    );
  }
}
