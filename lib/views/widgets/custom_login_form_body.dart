import 'dart:developer';

import 'package:barber_app/bloc/Auth_bloc/auth_bloc.dart';
import 'package:barber_app/constants.dart';
import 'package:barber_app/helpers/show_snack_bar.dart';
import 'package:barber_app/utils/app_router.dart';
import 'package:barber_app/views/widgets/custom_button.dart';
import 'package:barber_app/views/widgets/custom_form_label.dart';
import 'package:barber_app/views/widgets/custom_form_text_field.dart';
import 'package:barber_app/views/widgets/custom_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomLoginFormBody extends StatefulWidget {
  const CustomLoginFormBody({
    super.key,
  });

  @override
  State<CustomLoginFormBody> createState() => _CustomLoginFormBodyState();
}

class _CustomLoginFormBodyState extends State<CustomLoginFormBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          GoRouter.of(context).push(AppRouter.kHomeView);
        } else if (state is LoginFailure) {
          log(state.error.code);
          switch (state.error.code) {
            case 'invalid-credential':
              showSnackBar(context, 'Password is Incorrect');
            case 'invalid-email':
              showSnackBar(context, 'Email is Invalid');
            case 'user-not-found':
              showSnackBar(context, 'No user with this Email');
            default:
              showSnackBar(context, 'We have an Error!');
          }
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
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
              const Text(
                'Forgot password ?',
                style: TextStyle(
                  color: Color(0xff311937),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              CustomButton(
                text: 'SIGN IN',
                ontap: () {
                  if (formKey.currentState!.validate()) {
                    BlocProvider.of<AuthBloc>(context).add(
                      LoginEvent(
                        email: emailController.text,
                        password: passwordController.text,
                      ),
                    );
                  }
                },
                gradient: kgradient,
              ),
              const SizedBox(height: 10),
              _buildSignUpLink(context),
              const Spacer(flex: 2),
            ],
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
          "don't have an account ? ",
          style: TextStyle(
            color: Color(0xff311937),
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kRegisterView);
          },
          child: const Text(
            'Sign Up',
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
