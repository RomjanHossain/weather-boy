import 'package:flutter/material.dart';
import '../utils/constain.dart';
import '../myWidget/myList.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NextSDay extends StatefulWidget {
  @override
  _NextSDayState createState() => _NextSDayState();
}

class _NextSDayState extends State<NextSDay> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F5F7),
        shadowColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // textBaseline: TextBaseline.alphabetic,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                'Dhaka, Bangladesh',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Icon(
              FontAwesomeIcons.angleDown,
              color: Colors.black,
            ),
          ],
        ),
        // title: myDropDown(),
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
        actions: [
          IconButton(
              icon: Image.asset('assets/images/menu2.png'),
              onPressed: () {
                print('menu btn pressed0!');
              })
        ],
      ),
      body: Container(
        color: Color(0xFFF2F5F7),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, bottom: 0),
              child: Text(
                'Next 7 days',
                style: knxtday,
              ),
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
              // color: Color(0xFF88FAFB),
              color: Colors.black12,
              thickness: 2,
              indent: 30,
              endIndent: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(left: 15)),
                Expanded(child: Text('Precipitiation', style: kfText)),
                Expanded(
                    child: Text(
                  '70%',
                  style: kfadeText,
                )),
                Expanded(child: Text('Wind', style: kfText)),
                Expanded(
                    child: Text(
                  '8 km/h',
                  style: kfadeText,
                )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(left: 15)),
                Expanded(
                    child: Text(
                  'Humidity',
                  style: kfText,
                )),
                Expanded(
                    child: Text(
                  '65%',
                  style: kfadeText,
                )),
                Expanded(child: Text('Pressure', style: kfText)),
                Expanded(
                    child: Text(
                  '940 hPa',
                  style: kfadeText,
                )),
              ],
            ),
            Expanded(
              child: Container(
                color: Color(0xFFFFFFFF),
                height: MediaQuery.of(context).size.height / 1.7,
                child: ListView.separated(
                  padding: const EdgeInsets.all(8),
                  scrollDirection: Axis.vertical,
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
                    // color: Color(0xFF88FAFB),
                    color: Colors.black12,
                    thickness: 2,
                    indent: 30,
                    endIndent: 30,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
