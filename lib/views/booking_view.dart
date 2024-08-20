import 'package:barber_app/constants.dart';
import 'package:barber_app/models/service_model.dart';
import 'package:barber_app/providers/date_time_provider.dart';
import 'package:barber_app/views/widgets/booking_view_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookingView extends StatelessWidget {
  const BookingView({super.key, required this.serviceModel});
  final ServiceModel serviceModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbgColor,
        body: ChangeNotifierProvider(
          create: (context) => DateTimeProvider(),
          child: BookingViewBody(
            serviceModel: serviceModel,
          ),
        ),
      ),
    );
  }
}
