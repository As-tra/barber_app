import 'package:barber_app/constants.dart';
import 'package:barber_app/views/widgets/custom_button.dart';
import 'package:barber_app/views/widgets/custom_form_label.dart';
import 'package:barber_app/views/widgets/custom_form_text_field.dart';
import 'package:barber_app/views/widgets/custom_password_field.dart';
import 'package:flutter/material.dart';

class CustomFormBody extends StatelessWidget {
  const CustomFormBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
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
          ontap: () {},
          gradient: kgradient,
        ),
        const SizedBox(height: 10),
        _buildSignUpLink(),
        const Spacer(flex: 2),
      ],
    );
  }

  Row _buildSignUpLink() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "don't have an account ? ",
          style: TextStyle(
            color: Color(0xff311937),
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Sign Up',
          style: TextStyle(
            color: Color(0xffB91635),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
