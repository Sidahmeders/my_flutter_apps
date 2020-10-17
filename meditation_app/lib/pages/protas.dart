import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meditation_app/components/bottom_nav.dart';
import 'package:meditation_app/utils/constant.dart';

class Protas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // this is the total height and width of our device.
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: deviceSize.height * .4,
                decoration: BoxDecoration(
                  color: c_HeaderColor,
                  image: DecorationImage(
                    image: AssetImage('assets/images/img9.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.teal, BlendMode.colorBurn),
                  ),
                ),
                child: SafeArea(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: const EdgeInsets.only(right: 8, top: 32),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'dentistry', 
                            style: TextStyle(
                              fontSize: 38,
                              color: Colors.white,
                              letterSpacing: 4,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'apple day keep doctor away',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'i dont know what to say really \n3 minute to the greatest battle \nof our life.',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              letterSpacing: 1,
                              shadows: [
                                Shadow(
                                  offset: Offset(1, 1),
                                  blurRadius: 10,
                                  color: Colors.black
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            width: deviceSize.width * .6,
                            margin: EdgeInsets.only(top: 25, right: 20),
                            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 5),
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
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: deviceSize.height * .36),
                    alignment: Alignment.center,
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: <Widget>[
                        DomainCards('pathology', Icons.view_module),
                        DomainCards('dentistry', Icons.streetview),
                        DomainCards('protass', Icons.train),
                        DomainCards('unknown', Icons.unarchive),
                        DomainCards('surgerey', Icons.leak_add),
                        DomainCards('clipery', Icons.line_weight),
                      ],
                    ),
                  ),
                  Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: 14, bottom: 8, left: 10),
                        child: Text(
                          'unlock the full version',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.red[600],
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                image: AssetImage('assets/images/img2.jpg'),
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'control panel',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: c_BlueLightColor,
                                ),
                              ),
                              SizedBox(height: 7),
                              Text(
                                'the one who see in the future',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: c_ActiveIconColor
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class DomainCards extends StatelessWidget {

  final String text;
  final IconData icon;

  const DomainCards(this.text, this.icon, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
        return Container(
          width: constraint.maxWidth / 2 - 15,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: c_BlueColor,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: c_BlueColor),
                      ),
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
