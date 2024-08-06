import 'package:barber_app/utils/assets.dart';
import 'package:barber_app/views/widgets/booking_view_app_bar.dart';
import 'package:flutter/material.dart';

class BookingViewBody extends StatelessWidget {
  const BookingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BookingViewAppBar(),
          const SizedBox(height: 20),
          const Text(
            "Let's the",
            style: TextStyle(
              fontSize: 26,
              color: Colors.white70,
            ),
          ),
          const Text(
            "journey begin",
            style: TextStyle(
              fontSize: 22,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 30),
          Image.asset(Assets.imagesDiscount)
        ],
      ),
    );
  }
}
