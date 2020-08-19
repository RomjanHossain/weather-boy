import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  SmallCard({this.icon, this.text, this.mycolor, this.iconColor});
  final String text;
  final IconData icon;
  final Color mycolor;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 60,
      child: Card(
        borderOnForeground: true,
        color: mycolor ?? Colors.white,
        shadowColor: Color(0x0AFFFFFF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor ?? Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text,
              style: TextStyle(
                color: iconColor ?? Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
