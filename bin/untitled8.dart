import 'package:untitled8/untitled8.dart' as untitled8;
import 'dart:math';
void main(List<String> arguments) {

  double radians(degrees) {
    return degrees * pi / 180;
  }
  double haversine(lat1, lon1, lat2, lon2) {
    var R = 6371; // radius of Earth in kilometers
    var dLat = radians(lat2 - lat1);
    var dLon = radians(lon2 - lon1);
    var a = pow(sin(dLat / 2), 2) +
        cos(radians(lat1)) *
            cos(radians(lat2)) *
            pow(sin(dLon / 2), 2);
    var c = 2 * atan2(sqrt(a), sqrt(1 - a));
    var distance = R * c;
    return distance;
  }
  var distance = haversine(29.962498176463356, 30.901215976019355, 29.95794354485482, 30.894145672689355);
  print('$distance km');
}
