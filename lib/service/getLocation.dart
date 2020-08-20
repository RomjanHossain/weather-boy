import 'package:geolocator/geolocator.dart';

class GetLocation {
  // Future<Position> position;
  double latitude;
  double longitude;
  Future<void> getLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      longitude = position.longitude;
      latitude = position.latitude;
      // print(position.latitude);
      // print(position.longitude);
      // print(position);
    } catch (e) {
      print(e);
    }
  }
}
