import 'package:barber_app/utils/assets.dart';
import 'package:barber_app/views/widgets/custom_onbroading_button.dart';
import 'package:flutter/material.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        Hero(tag: 'barber',child: Image.asset(Assets.imagesBarber)),
        const SizedBox(height: 40),
        const CustomOnbroadingButton()
      ],
    );
  }
}
