import 'package:barber_app/constants.dart';
import 'package:barber_app/views/widgets/custom_button.dart';
import 'package:barber_app/views/widgets/custom_form_label.dart';
import 'package:barber_app/views/widgets/custom_form_text_field.dart';
import 'package:barber_app/views/widgets/custom_password_field.dart';
import 'package:flutter/material.dart';

class CustomRegisterFormBody extends StatelessWidget {
  const CustomRegisterFormBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const CustomFormLabel(text: 'Name'),
        const SizedBox(height: 10),
        const CustomFormTextField(
          hintText: 'your name ...',
          iconData: Icons.person_outline,
        ),
        const SizedBox(height: 30),
        const CustomFormLabel(text: 'Email'),
        const SizedBox(height: 10),
        const CustomFormTextField(
          hintText: 'example@gmail.com',
          iconData: Icons.email_outlined,
        ),
        const SizedBox(height: 30),
        const CustomFormLabel(text: 'Password'),
        const SizedBox(height: 10),
        const CustomPasswordField(),
        const SizedBox(height: 40),
        CustomButton(
          text: 'SIGN UP',
          ontap: () {},
          gradient: kgradient,
        ),
        const SizedBox(height: 10),
        _buildSignUpLink(context),
        const Spacer(),
      ],
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
