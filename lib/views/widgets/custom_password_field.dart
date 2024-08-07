import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key});

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
