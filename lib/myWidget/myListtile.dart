import 'package:flutter/material.dart';
import '../utils/constain.dart';

// ignore: camel_case_types
class myListtile extends StatelessWidget {
  const myListtile({Key key, @required this.title, @required this.subtitle})
      : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          subtitle,
          style: ksub,
        ),
        Text(
          title,
          style: ktitle,
        ),
      ],
    );
  }
}
