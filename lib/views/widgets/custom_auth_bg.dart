import 'package:barber_app/constants.dart';
import 'package:flutter/material.dart';

class CustomAuthBg extends StatelessWidget {
  const CustomAuthBg({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: MediaQuery.sizeOf(context).height * .5,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
        gradient: kgradient,
      ),
      child:  Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
