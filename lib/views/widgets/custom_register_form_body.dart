import 'dart:developer';

import 'package:barber_app/bloc/Auth_bloc/auth_bloc.dart';
import 'package:barber_app/constants.dart';
import 'package:barber_app/helpers/show_snack_bar.dart';
import 'package:barber_app/services/database.dart';
import 'package:barber_app/utils/app_router.dart';
import 'package:barber_app/views/widgets/custom_button.dart';
import 'package:barber_app/views/widgets/custom_form_label.dart';
import 'package:barber_app/views/widgets/custom_form_text_field.dart';
import 'package:barber_app/views/widgets/custom_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:random_string/random_string.dart';

class CustomRegisterFormBody extends StatefulWidget {
  const CustomRegisterFormBody({
    super.key,
  });

  @override
  State<CustomRegisterFormBody> createState() => _CustomRegisterFormBodyState();
}

class _CustomRegisterFormBodyState extends State<CustomRegisterFormBody> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          GoRouter.of(context).push(AppRouter.kHomeView);
        } else if (state is RegisterFailure) {
          log(state.error.code);
          switch (state.error.code) {
            case 'invalid-email':
              showSnackBar(context, 'Invalid Email!');
            case 'email-already-in-use':
              showSnackBar(context, 'Email already exist');
            case 'weak-password':
              showSnackBar(context, 'Use Stronger password');
            default:
              showSnackBar(context, 'We have an Error!');
          }
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const CustomFormLabel(text: 'Name'),
                const SizedBox(height: 10),
                CustomFormTextField(
                  hintText: 'your name ...',
                  iconData: Icons.person_outline,
                  controller: nameController,
                ),
                const SizedBox(height: 30),
                const CustomFormLabel(text: 'Email'),
                const SizedBox(height: 10),
                CustomFormTextField(
                  hintText: 'example@gmail.com',
                  iconData: Icons.email_outlined,
                  controller: emailController,
                ),
                const SizedBox(height: 30),
                const CustomFormLabel(text: 'Password'),
                const SizedBox(height: 10),
                CustomPasswordField(
                  controller: passwordController,
                ),
                const SizedBox(height: 40),
                CustomButton(
                  text: 'SIGN UP',
                  ontap: () {
                    if (formKey.currentState!.validate()) {
                      BlocProvider.of<AuthBloc>(context).add(
                        RegisterEvent(
                          email: emailController.text,
                          password: passwordController.text,
                          name: nameController.text,
                        ),
                      );
                    }
                  },
                  gradient: kgradient,
                ),
                const SizedBox(height: 10),
                _buildSignUpLink(context),
                const SizedBox(height: 30),
              ],
            ),
          ),
        );
      },
    );
  }

  Row _buildSignUpLink(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          "already have an account ? ",
          style: TextStyle(
            color: Color(0xff311937),
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Sign In',
            style: TextStyle(
              color: Color(0xffB91635),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
