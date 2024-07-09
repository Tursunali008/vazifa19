import 'dart:io';
import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:vazifa19/services/image_services.dart';

class DestinationsController extends ChangeNotifier {
  final _destinationsService = ImageFirebaseServices();

  Stream<QuerySnapshot> get destinations async* {
    yield* _destinationsService.getDestinations();
  }

  Future<void> addDestination({
    required File imageFile,
    required String title,
    required String lat,
    required String long,
  }) async {
    await _destinationsService.addDestinations(
      imageFile: imageFile,
      title: title,
      lat: lat,
      long: long,
    );
  }
}