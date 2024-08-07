import 'package:barber_app/constants.dart';
import 'package:flutter/material.dart';

class LoginBg extends StatelessWidget {
  const LoginBg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: MediaQuery.sizeOf(context).height * .5,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
        gradient: kgradient,
      ),
      child: const Text(
        'Hello \nSign in!',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
