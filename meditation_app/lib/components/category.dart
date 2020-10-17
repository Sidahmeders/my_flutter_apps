import 'package:flutter/material.dart';
import 'package:meditation_app/utils/constant.dart';


class CategoryWidget extends StatelessWidget {
  final String image;
  final String text;
  final String route;

  const CategoryWidget(
    this.image, 
    this.text, 
    this.route,
    {Key key,}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 19),
              blurRadius: 20,
              spreadRadius: -20,
              color: c_ShadowColor,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(image)
              ),
            ),
            Spacer(flex: 2,),
            Text(
              text,
              style: TextStyle(
              fontSize: 18,
              ),
            ),
            Spacer(flex: 3,),
          ],
        ),
      ),
    );
  }
}
