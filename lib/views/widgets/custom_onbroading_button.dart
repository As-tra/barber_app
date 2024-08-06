import 'package:barber_app/constants.dart';
import 'package:barber_app/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomOnbroadingButton extends StatelessWidget {
  const CustomOnbroadingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kHomeView),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        
        decoration: BoxDecoration(
          color: kPrimary,
          borderRadius: BorderRadius.circular(20),
      
        ),
        child: const Text(
          'Get Stylish Hair Cut',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
