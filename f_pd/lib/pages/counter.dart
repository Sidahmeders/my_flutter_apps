import 'package:f_pd/bloc/counter_bloc.dart';
import 'package:f_pd/components/decrement.dart';
import 'package:f_pd/components/increment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text('counter page'),),
      body: new Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                counterBloc.counter.toString(),
                style: TextStyle(fontSize: 50),
              ),
              IncrementCounter(),
              DecrementCounter(),
            ],
          ),
        ),
      ),
    );
  }
}
