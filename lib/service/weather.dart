import 'networkdata.dart';
import 'getLocation.dart';

const api = '31c650ab85315c80a4e302721ee18911';

class WeatherModel {
  Future<dynamic> weatherByCity(String city) async {
    NetworkData networkdata = NetworkData(
        'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$api&units=metric');
    var myData = await networkdata.getData();
    return myData;
  }

  Future<dynamic> weatherdata() async {
    GetLocation getmyLoca = GetLocation();
    await getmyLoca.getLocation();

    NetworkData networkdata = NetworkData(
        'http://api.openweathermap.org/data/2.5/weather?lat=${getmyLoca.latitude}&lon=${getmyLoca.longitude}&appid=$api&units=metric');

    var myData = await networkdata.getData();
    // print(
    //     'http://api.openweathermap.org/data/2.5/weather?lat=${getmyLoca.latitude}&lon=${getmyLoca.longitude}&appid=$api&units=metric');
    return myData;
  }
}
