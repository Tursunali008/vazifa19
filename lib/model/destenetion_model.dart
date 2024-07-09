import 'package:cloud_firestore/cloud_firestore.dart';

class Destinations {
  final String id;
  final String title;
  final String imageUrl;
  final String long;
  final String lat;

  Destinations({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.long,
    required this.lat,
  });

  @override
  String toString() {
    return 'Destinations{id: $id, title: $title, imageUrl: $imageUrl, long: $long, lat: $lat}';
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'long': long,
      'lat': lat,
    };
  }

  factory Destinations.fromSnapshot(QueryDocumentSnapshot query) {
    return Destinations(
      id: query.id,
      title: query['title'] as String,
      imageUrl: query['imageUrl'] as String,
      long: query['long'] as String,
      lat: query['lat'] as String,
    );
  }
}