import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField(
      {super.key, required this.hintText, required this.iconData});
  final String hintText;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: Icon(
          iconData,
        ),
      ),
    );
  }
}
