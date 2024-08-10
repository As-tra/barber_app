import 'package:barber_app/bloc/Auth_bloc/auth_bloc.dart';
import 'package:barber_app/views/widgets/custom_auth_bg.dart';
import 'package:barber_app/views/widgets/custom_form.dart';
import 'package:barber_app/views/widgets/custom_register_form_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        const CustomAuthBg(
          title: 'Create Your \n Account',
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: CustomForm(
            formBody: BlocProvider(
              create: (context) => AuthBloc(),
              child: const CustomRegisterFormBody(),
            ),
          ),
        ),
      ],
    );
  }
}
