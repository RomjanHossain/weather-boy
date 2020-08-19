import 'package:flutter/material.dart';
import '../utils/constain.dart';

class CustomListItem extends StatelessWidget {
  CustomListItem({this.day, this.myicon, this.temp1, this.temp2});
  final IconData myicon;
  final String day;
  final String temp1;
  final String temp2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(myicon),
          Text(
            day,
            style: kfinal,
          ),
          SizedBox(
            width: 100,
          ),
          Text(
            temp1,
            style: kfinal,
          ),
          Text(
            temp2,
            style: kfinal,
          ),
        ],
      ),
    );
  }
}
