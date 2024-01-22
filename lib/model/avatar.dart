import 'package:google_maps_flutter/google_maps_flutter.dart';

class Avatar {
  final String id;
  final String? name;
  final String url;
  final LatLng latlng;

  const Avatar({
    required this.id,
    this.name,
    required this.url,
    required this.latlng
  });
}
