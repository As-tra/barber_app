import 'package:barber_app/services/shared_pref.dart';
import 'package:barber_app/utils/assets.dart';
import 'package:barber_app/utils/service_locator.dart';
import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 28),
            const Text(
              'Hello👋🏻,',
              style: TextStyle(
                color: Color.fromARGB(255, 245, 245, 245),
                fontSize: 18,
              ),
            ),
            Text(
              getIt<SharedPrefrenceHelper>().getUserName() ?? '',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(Assets.imagesBarber),
        )
      ],
    );
  }
}
