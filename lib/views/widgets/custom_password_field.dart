import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return '* Field is Required';
        }
        return null;
      },
      controller: widget.controller,
      obscureText: !showPassword,
      decoration: InputDecoration(
        hintText: 'password',
        suffixIcon: GestureDetector(
          onTap: () {
            showPassword = !showPassword;
            setState(() {});
          },
          child: Icon(showPassword ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }
}
