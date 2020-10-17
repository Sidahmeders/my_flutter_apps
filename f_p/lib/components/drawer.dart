import 'package:flutter/material.dart';
import 'package:flutter_provider/components/mylist_menu.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueGrey,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('sidahmed@gmail.com'),
              accountName: Text('sidahmed boutaraa'),
              currentAccountPicture: CircleAvatar(),
            ),
            SizedBox(
              height: 3,
            ),
            Divider(
              color: Colors.white,
            ),
            MyMenuItems(),
          ],
        ),
      ),
    );
  }
}
