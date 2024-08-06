import 'package:barber_app/models/service_model.dart';
import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({super.key, required this.serviceModel});
  final ServiceModel serviceModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: const BoxDecoration(
        color: Color(0xffe29452),
      ),
      child: Column(
        children: [
          Image.asset(serviceModel.image),
          Text(
            serviceModel.title,
            style: _getFontStyle(),
          )
        ],
      ),
    );
  }

  TextStyle _getFontStyle() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }
}
