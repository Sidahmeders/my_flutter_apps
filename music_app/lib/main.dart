import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'music app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Expanded buildKey(Color color) {
      return Expanded(
        child: FlatButton(
          child: Text('...'),
          color: color,
          onPressed: (){
            print('object cool.');
          },
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("king kong"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
         buildKey(Colors.red),
         buildKey(Colors.greenAccent),
         buildKey(Colors.orange),
         buildKey(Colors.purpleAccent)
      ],),
    );
  }
}
