import 'package:flutter/material.dart';
import 'package:weatherboy/myWidget/myListtile.dart';
import 'package:weatherboy/myWidget/myCard.dart';
import 'package:weatherboy/utils/constain.dart';
import 'secscreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.body}) : super(key: key);
  final dynamic body;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double feelslike;
  int temp;
  String country;
  var cityname;
  var sunset;
  var sunrise;
  var wind;
  var huma;
  var pressure;
  @override
  void initState() {
    super.initState();
    weatherdata(widget.body);
  }

  void weatherdata(dynamic weather) {
    setState(() {
      if (weather == null) {
        temp = 0;
        feelslike = 0.0;
        return;
      }

      // var id = weather['weather'][0]['id'];
      // weatherIcon = weathermodel.getWeatherIcon(id);
      // message = weathermodel.getMessage(temp);
      var tempa = weather['main']['temp'];
      int sr = weather['sys']['sunrise'];
      int ss = weather['sys']['sunset'];
      dynamic tr =
          DateTime.fromMicrosecondsSinceEpoch(sr).toString().split(" ")[1];
      dynamic ts =
          DateTime.fromMicrosecondsSinceEpoch(ss).toString().split(" ")[1];
      sunrise = tr.substring(0, 5);

      sunset = ts.substring(0, 5);
      temp = tempa.toInt();
      feelslike = weather['main']['feels_like'];
      country = weather['sys']['country'];
      cityname = weather['name'];
      huma = weather['main']['humidity'];
      pressure = weather['main']['pressure'];
      wind = weather['wind']['speed'];
      print('t: $temp,c: $cityname,cn :$country, fl :$feelslike');
    });
  }

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
            leading: Icon(
              Icons.add,
              color: Colors.transparent,
            ),
            backgroundColor: Colors.transparent,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // textBaseline: TextBaseline.alphabetic,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    '$cityname, $country',
                  ),
                ),
                Icon(
                  FontAwesomeIcons.angleDown,
                ),
              ],
            ),
            // title: myDropDown(),
            centerTitle: true,
            actions: [
              IconButton(
                  icon: Image.asset(
                    'assets/images/menu2.png',
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print('menu btn pressed0!');
                    // Navigator.pop(context);
                    // setState(() {
                    //   loadingScreen();
                    // });
                  })
            ],
          ),
          body: SafeArea(
            child: Column(
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
                              '$temp',
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
                          'Feels like $feelslike°',
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
                              title: '$sunrise',
                              subtitle: 'SUNRISE',
                            ),
                            myListtile(
                              title: '$sunset',
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
                              title: '$huma%',
                              subtitle: 'HUMIDITY',
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            myListtile(
                              title: '$wind km/h',
                              subtitle: 'WIND',
                            ),
                            myListtile(
                              title: '$pressure hPa',
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
        ),
      ],
    );
  }
}
