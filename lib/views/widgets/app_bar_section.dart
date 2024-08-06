import 'package:barber_app/utils/assets.dart';
import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello👋🏻,',
              style: TextStyle(
                color: Color.fromARGB(255, 245, 245, 245),
                fontSize: 18,
              ),
            ),
            Text(
              'Assil Mathlouthi',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Hero(
          tag: 'barber',
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(Assets.imagesBarber),
          ),
        )
      ],
    );
  }
}
