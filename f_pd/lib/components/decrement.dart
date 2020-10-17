import 'package:f_pd/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DecrementCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return new FlatButton.icon(
      onPressed: () => counterBloc.decrement(),
      label: Text('decrease'),
      icon: Icon(Icons.format_indent_increase),
    );
  }
}
