import 'package:flutter/material.dart';

class CustomOnbroadingButton extends StatelessWidget {
  const CustomOnbroadingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xffdf711a),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        'Get Stylish Hair Cut',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
