import 'package:flutter/material.dart';
import 'package:weatherboy/service/myCard.dart';
import 'package:weatherboy/utils/constain.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          )),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text('Kyiv, Ukraine'),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        'Today',
                        style: kboldText,
                      ),
                      Text(
                        'Wed, 3 Dec',
                        style: ksmallText,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Color(0xD9FFFFFF),
                // height: .5,
                thickness: .2,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            'Now',
                            style: ktimeStyle,
                          ),
                          SmallCard(
                            icon: Icons.ac_unit,
                            text: '-1',
                            iconColor: Colors.black,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Now',
                            style: ktimeStyle,
                          ),
                          SmallCard(
                            mycolor: Colors.transparent,
                            icon: Icons.ac_unit,
                            text: '-1',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Now',
                            style: ktimeStyle,
                          ),
                          SmallCard(
                            mycolor: Color(0x0FFFFFFF),
                            icon: Icons.ac_unit,
                            text: '-1',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Now',
                            style: ktimeStyle,
                          ),
                          SmallCard(
                            mycolor: Color(0x0FFFFFFF),
                            icon: Icons.ac_unit,
                            text: '-1',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Now',
                            style: ktimeStyle,
                          ),
                          SmallCard(
                            mycolor: Color(0x0FFFFFFF),
                            icon: Icons.ac_unit,
                            text: '-1',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Now',
                            style: ktimeStyle,
                          ),
                          SmallCard(
                            mycolor: Color(0x0FFFFFFF),
                            icon: Icons.ac_unit,
                            text: '-1',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Now',
                            style: ktimeStyle,
                          ),
                          SmallCard(
                            mycolor: Color(0x0FFFFFFF),
                            icon: Icons.ac_unit,
                            text: '-1',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}