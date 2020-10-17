import 'package:flutter/material.dart';
import 'package:meditation_app/components/bottom_nav.dart';
import 'package:meditation_app/components/category.dart';
import 'package:meditation_app/routes/named_route.dart';
import 'package:meditation_app/utils/constant.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // this is the total height and width of our device.
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: c_BackgroundColor,
      body: Stack(
        children: <Widget>[
          Container(
            height: deviceSize.height * .45,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/cool.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: c_BackgroundColor,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/icons/menu.png'), 
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 12),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'what\'s up bro',
                        style: TextStyle(
                          fontSize: 32,
                          shadows: [
                            Shadow(
                              offset: Offset(0, 0),
                              blurRadius: 12,
                              color: Color.fromARGB(255, 250, 250, 250),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 32),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        icon: Icon(Icons.ac_unit),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryWidget('assets/images/img5.jpg', 'protas 3and amine', protasR),
                        CategoryWidget('assets/images/img2.jpg', 'bross a dont', brossR),
                        CategoryWidget('assets/images/img3.jpg', 'na3i snanek rabek', snanR),
                        CategoryWidget('assets/images/img6.jpg', 'kol wahed wahdo', cupR),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
