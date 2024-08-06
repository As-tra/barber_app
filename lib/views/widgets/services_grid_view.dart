import 'package:barber_app/models/service_model.dart';
import 'package:barber_app/utils/assets.dart';
import 'package:barber_app/views/widgets/service_item.dart';
import 'package:flutter/material.dart';

class ServicesGridView extends StatelessWidget {
  const ServicesGridView({super.key});

  static const services = [
    ServiceModel(
      title: 'Classic Shaving',
      image: Assets.imagesShaving,
    ),
    ServiceModel(
      title: 'Classic Shaving',
      image: Assets.imagesShaving,
    ),
    ServiceModel(
      title: 'Classic Shaving',
      image: Assets.imagesShaving,
    ),
    ServiceModel(
      title: 'Classic Shaving',
      image: Assets.imagesShaving,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: services.length,
      itemBuilder: (context, index) {
        return ServiceItem(
          serviceModel: services[index],
        );
      },
    );
  }
}
