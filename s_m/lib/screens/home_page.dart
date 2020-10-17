import 'package:flutter/material.dart';
import 'package:s_m/scoped_models/scoped_counters.dart';
import 'package:s_m/screens/page_one.dart';
import 'package:s_m/screens/page_three.dart';
import 'package:s_m/screens/page_two.dart';
import 'package:scoped_model/scoped_model.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScopedCounter scopedCounter = ScopedCounter();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<ScopedCounter>(
      model: scopedCounter,
       child: Scaffold(
        appBar: AppBar(title: Text('home')),
        body: Center(
          child: Column(
            children: <Widget>[
              PageOne(),
              PageTwo(),
              PageThree(),
              FloatingActionButton(
                onPressed: () => setState(() => scopedCounter.increment()),
                child: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
