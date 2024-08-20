import 'dart:developer';

import 'package:barber_app/models/booking_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> bookingService({required BookingModel model}) async {
  log('here');
  try {
    await FirebaseFirestore.instance
        .collection('Booking')
        .doc(model.date.toString())
        .set({
      'name': model.name,
      'email': model.email,
      'date': model.date,
      'service': model.service,
    });
    return true;
  } catch (_) {
    log(_.toString());
    return false;
  }
}
