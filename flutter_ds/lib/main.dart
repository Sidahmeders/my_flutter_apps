import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blueGrey[900]),
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          title: Text('sido zoldik...'),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/luffy.jpeg'),
              ),
              Text(
                'monkey.D luffy',
                style: TextStyle(
                  color: Colors.teal[50],
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'the next pirate king',
                style: TextStyle(
                  color: Colors.redAccent,
                  letterSpacing: 2
                ),
              ),
              SizedBox(
                height: 20,
                width: 160,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                color: Colors.black,
                margin: EdgeInsets.all(15),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 18
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.cloud,
                        size: 50.0,
                        color: Colors.redAccent,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '0984.3846.8320364',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2
                        ),
                      )
                  ],),
                ),
              ),
               Card(
                color: Colors.black,
                margin: EdgeInsets.all(15),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 18
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.code,
                        size: 50.0,
                        color: Colors.redAccent,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'const arrow = () => {}',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2
                        ),
                      )
                  ],),
                ),
              )
          ],)
        )
    ));
  }
}
