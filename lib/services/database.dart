import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:barber_app/models/booking_model.dart';
class DatabaseMethods {


Future<bool> bookingService({required BookingModel model}) async {
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
    return false;
  }
}

  Future<void> addUserDetails(Map<String, dynamic> userInfo, String id) async {
    await FirebaseFirestore.instance.collection('Users').doc(id).set(userInfo);
  }
}
