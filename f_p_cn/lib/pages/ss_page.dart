import 'package:f_p_cn/routes/route_names.dart';
import 'package:flutter/material.dart';

class SsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ss page')),
      body: SafeArea(
        child: Container(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  labelText: 'cool',
                  border: OutlineInputBorder(),
                ),
                onSaved: (val) => print(val),
              ),
              FloatingActionButton(
                onPressed: () => Navigator.pushNamed(context, homeRoute), 
              ),
            ],
          ),
        ),
      ),
    );
  }
}
