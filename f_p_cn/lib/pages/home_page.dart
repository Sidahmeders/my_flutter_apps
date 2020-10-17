import 'package:f_p_cn/routes/route_names.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('home page')),
      body: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, ssRoute),
      ),
    );
  }
}
