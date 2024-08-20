import 'package:flutter/material.dart';

class BookingModel {
  final String name;
  final String email;
  final DateTime date;
  final TimeOfDay time;

  BookingModel({required this.name, required this.email, required this.date, required this.time});
}
