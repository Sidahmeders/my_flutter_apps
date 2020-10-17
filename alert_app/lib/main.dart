import 'package:flutter/material.dart';
import 'package:edge_alert/edge_alert.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void colorfullAlert() {
    EdgeAlert.show(context,
      title: 'Title',
      description: 'Description',
      gravity: EdgeAlert.TOP,
      backgroundColor: Colors.red
    );
  }

  void longDescAlert() {
    EdgeAlert.show(
      context,
      title: 'Title',
      description: 'long description wow i am gonna kill ya all mother fuckers ohh sorry am fasting',
      gravity: EdgeAlert.TOP,
    );
  }

  void differentIcon() {
    EdgeAlert.show(
      context,
      title: 'Title',
      description: 'Description',
      gravity: EdgeAlert.TOP,
      icon: Icons.flag
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Column(children: <Widget>[
            FlatButton(
              color: Colors.yellow,
              onPressed: (){
                colorfullAlert();
              },
              child: Text('colorful alert', style: TextStyle(fontSize: 26),),
            ),
            FlatButton(
              color: Colors.blueAccent,
              onPressed: (){
                longDescAlert();
              },
              child: Text('long Description', style: TextStyle(fontSize: 26),),
            ),
            FlatButton(
              color: Colors.greenAccent,
              onPressed: (){
                differentIcon();
              },
              child: Text('different Icon', style: TextStyle(fontSize: 26),),
            ),
          ],),
        ),
    ],);
  }
}

