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
      title: 'Hair Washing',
      image: Assets.imagesHair,
    ),
    ServiceModel(
      title: 'Hair Cutting',
      image: Assets.imagesCutting,
    ),
    ServiceModel(
      title: 'Beard Trimming',
      image: Assets.imagesBeard,
    ),
    ServiceModel(
      title: 'Facials',
      image: Assets.imagesFacials,
    ),
    ServiceModel(
      title: 'Kids Hair Cutting',
      image: Assets.imagesKids,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
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
