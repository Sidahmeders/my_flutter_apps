import 'package:flutter/material.dart';
import 'package:meditation_app/utils/constant.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
         Expanded(
          child: BottomNavItem(
             'today patient',
             Icons.report,
           ),
         ),
         Expanded(
          child: BottomNavItem(
             'add patient',
             Icons.add_box,
           ),
         ),
         Expanded(
          child: BottomNavItem(
             'remove',
             Icons.remove_circle,
           ),
         ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {

  final String text;
  final IconData icon;

  BottomNavItem(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(icon, color: c_IconsColor, size: 30,),
          Text(text, style: TextStyle(color: c_IconsColor)),
        ],
      ),
    );
  }
}