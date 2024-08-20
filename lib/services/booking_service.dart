import 'package:barber_app/models/booking_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> bookingService({required BookingModel model}) async {
  try {
    await FirebaseFirestore.instance
        .collection('Booking')
        .doc(model.email)
        .set({
      'name': model.name,
      'email': model.email,
      'date': model.date,
      'time': model.time,
    });
    return true;
  } on Exception catch (_) {
    return false;
  }
}
