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
    return const Column(
      children: [
        CustomFormLabel(text: 'Email'),
        SizedBox(height: 10),
        CustomFormTextField(
          hintText: 'example@gmail.com',
          iconData: Icons.email_outlined,
        ),
        SizedBox(height: 30),
        CustomFormLabel(text: 'Password'),
        SizedBox(height: 10),
        CustomPasswordField()
      ],
    );
  }
}
