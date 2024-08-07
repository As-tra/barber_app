import 'package:barber_app/views/widgets/custom_form.dart';
import 'package:barber_app/views/widgets/custom_auth_bg.dart';
import 'package:barber_app/views/widgets/custom_login_form_body.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomAuthBg(title: 'Hello \nSign in!'),
        Align(
          alignment: Alignment.bottomCenter,
          child: CustomForm(
            formBody: CustomLoginFormBody(),
          ),
        ),
      ],
    );
  }
}
