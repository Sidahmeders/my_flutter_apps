import 'package:flutter/material.dart';
import 'package:flutter_provider/components/drawer.dart';
import 'package:flutter_provider/components/lang_action.dart';
import 'package:flutter_provider/localization/translate.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(translate(context,'home_title')),
        actions: <Widget>[
          LangAction(),
        ],
      ),
      drawer: MyDrawer(),
      body: Container(
        child: Text(translate(context, 'home_screen')),
      ),
    );
  }
}
