import 'package:geolocator/geolocator.dart';

class Location{
  late double latitude;
  late double longtitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longtitude = position.longitude;
    } catch(e){
      print(e);
    }
  }
}