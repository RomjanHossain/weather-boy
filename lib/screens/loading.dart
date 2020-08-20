import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../service/weather.dart';
import 'mainPage.dart';
import 'dart:math';

// ignore: camel_case_types
class loadingScreen extends StatefulWidget {
  @override
  _loadingScreenState createState() => _loadingScreenState();
}

// ignore: camel_case_types
class _loadingScreenState extends State<loadingScreen> {
  Color ranColbg;
  Color ranColL;

  Timer _everySecond;
  @override
  void initState() {
    super.initState();
    getLocation();

    ranColbg = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    ranColL = Colors.primaries[Random().nextInt(Colors.primaries.length)];

    _everySecond = Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        ranColbg = Colors.primaries[Random().nextInt(Colors.primaries.length)];
        ranColL = Colors.primaries[Random().nextInt(Colors.primaries.length)];
      });
    });
  }

  void getLocation() async {
    WeatherModel myweatherModel = WeatherModel();
    var myData = await myweatherModel.weatherdata();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return MyHomePage(
        body: myData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ranColbg,
      child: SpinKitDoubleBounce(
        color: ranColL,
        size: 200,
        // duration: Duration(milliseconds: 3000),
      ),
      // child: Text(
      //   '$_now',
      //   style: ktitle,
      // ),
    );
  }
}
