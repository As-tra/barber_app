import 'package:barber_app/views/widgets/app_bar_section.dart';
import 'package:barber_app/views/widgets/services_grid_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarSection(),
                Divider(
                  height: 40,
                  color: Colors.white38,
                ),
                Text(
                  'Services',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        ServicesGridView(),
      ],
    );
  }
}
