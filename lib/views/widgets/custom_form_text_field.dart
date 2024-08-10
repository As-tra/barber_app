import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField(
      {super.key,
      required this.hintText,
      required this.iconData,
      required this.controller});
  final String hintText;
  final IconData iconData;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return '* Field is Required';
        }
        return null;
      },
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: Icon(
          iconData,
        ),
      ),
    );
  }
}
