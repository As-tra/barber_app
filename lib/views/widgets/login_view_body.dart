import 'package:barber_app/views/widgets/custom_form.dart';
import 'package:barber_app/views/widgets/login_bg.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        LoginBg(),
        Align(
          alignment: Alignment.bottomCenter,
          child: CustomForm(),
        ),
      ],
    );
  }
}
