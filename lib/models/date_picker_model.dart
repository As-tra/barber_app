import 'package:flutter/material.dart';

class DatePickerModel {
  final String title, text;
  final IconData iconData;
  final VoidCallback ontap;

  DatePickerModel(
      {required this.title,
      required this.text,
      required this.iconData,
      required this.ontap});
}
