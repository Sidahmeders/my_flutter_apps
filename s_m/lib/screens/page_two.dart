import 'package:flutter/material.dart';
import 'package:s_m/scoped_models/scoped_counters.dart';
import 'package:scoped_model/scoped_model.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ScopedCounter>(
      builder: (context, child, model) => 
        Text('page two counter is ${model.counter2.count}'
      ),
    );
  }
}
