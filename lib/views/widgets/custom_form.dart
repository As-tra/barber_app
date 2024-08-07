import 'package:barber_app/views/widgets/custom_form_body.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 2 / 3,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      decoration: _buildDecoration(),
      child: const CustomFormBody(),
    );
  }

  BoxDecoration _buildDecoration() {
    return const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32),
        topRight: Radius.circular(32),
      ),
    );
  }
}

