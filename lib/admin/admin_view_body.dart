import 'package:barber_app/bloc/Auth_bloc/auth_bloc.dart';
import 'package:barber_app/constants.dart';
import 'package:barber_app/helpers/show_snack_bar.dart';
import 'package:barber_app/utils/app_router.dart';
import 'package:barber_app/views/widgets/custom_auth_bg.dart';
import 'package:barber_app/views/widgets/custom_button.dart';
import 'package:barber_app/views/widgets/custom_form.dart';
import 'package:barber_app/views/widgets/custom_form_label.dart';
import 'package:barber_app/views/widgets/custom_form_text_field.dart';
import 'package:barber_app/views/widgets/custom_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AdminViewBody extends StatefulWidget {
  const AdminViewBody({super.key});

  @override
  State<AdminViewBody> createState() => _AdminViewBodyState();
}

class _AdminViewBodyState extends State<AdminViewBody> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomAuthBg(title: 'Admin \nPanel'),
        Align(
          alignment: Alignment.bottomCenter,
          child: CustomForm(
            formBody: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is AdminLoginSuccess) {
                  GoRouter.of(context).push(AppRouter.kHomeView);
                } else if (state is LoginFailure) {
                  showSnackBar(context, 'Invalid Credentials');
                }
              },
              builder: (context, state) {
                return Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const CustomFormLabel(text: 'Name'),
                      const SizedBox(height: 10),
                      CustomFormTextField(
                        hintText: 'John',
                        iconData: Icons.person,
                        controller: nameController,
                      ),
                      const SizedBox(height: 30),
                      const CustomFormLabel(text: 'Password'),
                      const SizedBox(height: 10),
                      CustomPasswordField(
                        controller: passwordController,
                      ),
                      const SizedBox(height: 40),
                      const Spacer(),
                      CustomButton(
                        text: 'SIGN IN',
                        ontap: () {
                          BlocProvider.of<AuthBloc>(context).add(
                            AdminLoginEvent(
                              name: nameController.text,
                              password: passwordController.text,
                            ),
                          );
                        },
                        gradient: kgradient,
                      ),
                      const Spacer(flex: 2),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
