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
        gradient: LinearGradient(
          colors: [
            Color(0xffB91635),
            Color(0xff621d3c),
            Color(0xff311937),
          ],
        ),
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
