import 'package:geolocator/geolocator.dart';

// Future<Position> determinePosition({lat, lon}) async {
//   bool serviceEnabled;
//   LocationPermission permission;
//
//   serviceEnabled = await Geolocator.isLocationServiceEnabled();
//   if (!serviceEnabled) {
//     return Future.error('Location services are disabled.');
//   }
//
//   permission = await Geolocator.checkPermission();
//   permission = await Geolocator.requestPermission();
//
//   if (permission == LocationPermission.denied) {
//     return Future.error('Location permissions are denied');
//   }
//
//   if (permission == LocationPermission.deniedForever) {
//     return Future.error(
//         'Location permissions are permanently denied, we cannot request permissions.');
//   }
//   Position position = await Geolocator.getCurrentPosition(
//       desiredAccuracy: LocationAccuracy.low);
//   print(position);
//   lat = position.latitude;
//   lon = position.longitude;
//
//   return await Geolocator.getCurrentPosition();
// }

class Location {
  late double lat;
  late double lon;

  Future getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      lat = position.latitude;
      lon = position.longitude;
      print({lat, lon});
    } catch (e) {
      print(e);
    }
  }
}
