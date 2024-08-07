import 'package:flutter/material.dart';

class CustomFormLabel extends StatelessWidget {
  const CustomFormLabel({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: _getStyle(),
        ),
      ],
    );
  }

  TextStyle _getStyle() {
    return const TextStyle(
      color: Color(0xffB91635),
      fontSize: 25,
      fontWeight: FontWeight.w500,
    );
  }
}
