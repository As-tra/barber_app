import 'package:barber_app/views/widgets/custom_auth_bg.dart';
import 'package:barber_app/views/widgets/custom_form.dart';
import 'package:barber_app/views/widgets/custom_register_form_body.dart';
import 'package:flutter/material.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomAuthBg(
          title: 'Create Your \n Account',
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: CustomForm(
            formBody: CustomRegisterFormBody(),
          ),
        ),
      ],
    );
  }
}
