import 'package:flutter/material.dart';
import 'package:flutter_provider/components/drawer.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('setting page')),
      drawer: MyDrawer(),
      body: Container(
        child: Text('setting', style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
