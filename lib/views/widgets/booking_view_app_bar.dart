import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookingViewAppBar extends StatelessWidget {
  const BookingViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () => GoRouter.of(context).pop(),
      ),
    );
  }
}
