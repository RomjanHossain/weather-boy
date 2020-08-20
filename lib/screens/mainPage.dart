import 'package:flutter/material.dart';
import 'package:weatherboy/myWidget/myListtile.dart';
import 'package:weatherboy/service/myCard.dart';
import 'package:weatherboy/utils/constain.dart';
import 'secscreen.dart';

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
            actions: [
              IconButton(
                  icon: Image.asset(
                    'assets/images/menu2.png',
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print('menu btn pressed0!');
                  })
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Today',
                        style: kboldText,
                      ),
                      Text(
                        'Wed, 3 Dec',
                        style: ksmallText,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '-1',
                            style: kbigText,
                            // textAlign: TextAlign.start,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              '°C',
                              style: ksmt,
                              // textAlign: TextAlign.start,
                            ),
                          )
                        ],
                      ),
                      Text(
                        'Feels like -3°',
                        style: kfadetxt,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              'Today',
                              style: ktimeStyle,
                            ),
                          ),
                          Text(
                            'Tomorrow',
                            style: ktimeStyle,
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          GestureDetector(
                            onTap: () {
                              print('next page taped!');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return NextSDay();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              'Next 7 days >',
                              style: knxttxt,
                            ),
                          ),
                        ],
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          myListtile(
                            title: '7.38am',
                            subtitle: 'SUNRISE',
                          ),
                          myListtile(
                            title: '4.50pm',
                            subtitle: 'SUNSET',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          myListtile(
                            title: '90%',
                            subtitle: 'PRECIPITATION',
                          ),
                          myListtile(
                            title: '77%',
                            subtitle: 'HUMIDITY',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          myListtile(
                            title: '11 km/h',
                            subtitle: 'WIND',
                          ),
                          myListtile(
                            title: '1015 hPa',
                            subtitle: 'PRESSURE',
                          ),
                        ],
                      ),
                    ],
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
