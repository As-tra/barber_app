import 'package:flutter/material.dart';

class CustomDateTimePicker extends StatelessWidget {
  const CustomDateTimePicker(
      {super.key,
      required this.ontap,
      required this.text,
      required this.iconData});
  final VoidCallback ontap;
  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: Colors.white,
          ),
          const SizedBox(width: 15),
          Text(
            text,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
