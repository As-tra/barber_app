import 'package:barber_app/utils/app_router.dart';
import 'package:barber_app/utils/assets.dart';
import 'package:barber_app/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        Hero(tag: 'barber', child: Image.asset(Assets.imagesBarber)),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: CustomButton(
            text: 'Get Stylish Hair Cut',
            ontap: () => GoRouter.of(context).push(AppRouter.kLoginView),
          ),
        )
      ],
    );
  }
}
