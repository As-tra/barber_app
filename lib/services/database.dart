import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future<void> addUserDetails(Map<String, dynamic> userInfo, String id) async {
    await FirebaseFirestore.instance.collection('Users').doc(id).set(userInfo);
  }
}
