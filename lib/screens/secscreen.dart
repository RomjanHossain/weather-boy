import 'package:flutter/material.dart';
import '../utils/constain.dart';
import '../myWidget/myList.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// final String svgImg = 'assets/images/menu.svg';
// final Widget svgIcon = SvgPicture.asset(svgImg, color: Colors.black);

class NextSDay extends StatefulWidget {
  @override
  _NextSDayState createState() => _NextSDayState();
}

class _NextSDayState extends State<NextSDay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'AppBar Demo',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.navigate_before,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [IconButton(icon: Icon(Icons.add), onPressed: () {})],
      ),
      body: Container(
        color: Color(0xFFF2F5F7),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Next 7 days',
              style: knxtday,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 10,
              ),
              child: CustomListItem(
                myicon: Icons.ac_unit,
                day: 'Thusday, 4 Dec',
                temp1: '-1°',
                temp2: '-2°',
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
              ],
            ),
            Container(
              color: Color(0xFFFFFFFF),
              height: MediaQuery.of(context).size.height / 1.7,
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 55,
                    // color: Colors.black12,
                    child: Center(
                      child: CustomListItem(
                        myicon: Icons.ac_unit,
                        day: 'Thusday, 4 Dec',
                        temp1: '-1°',
                        temp2: '-2°',
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  color: Colors.red,
                  thickness: 2,
                  indent: 30,
                  endIndent: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
