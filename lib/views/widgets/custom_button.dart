import 'package:barber_app/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.ontap,
    this.gradient,
  });
  final String text;
  final VoidCallback ontap;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        constraints: const BoxConstraints(minWidth: double.infinity),
        decoration: BoxDecoration(
          color: gradient == null ? kPrimary : null,
          borderRadius: BorderRadius.circular(20),
          gradient: gradient,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
