import 'package:flutter/material.dart';

class DateTimeProvider extends ChangeNotifier {
  DateTime dateTime = DateTime.now();
  TimeOfDay timeOfDay = TimeOfDay.now();

  void changeDate(DateTime value) {
    dateTime = value;
    notifyListeners();
  }
  void changeTime(TimeOfDay value) {
    timeOfDay = value;
    notifyListeners();
  }
}
