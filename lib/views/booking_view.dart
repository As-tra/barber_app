import 'package:barber_app/bloc/bloc/booking_bloc.dart';
import 'package:barber_app/constants.dart';
import 'package:barber_app/models/service_model.dart';
import 'package:barber_app/views/widgets/booking_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingView extends StatelessWidget {
  const BookingView({super.key, required this.serviceModel});
  final ServiceModel serviceModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbgColor,
        body: BlocProvider(
          create: (context) => BookingBloc(),
          child: BookingViewBody(
            serviceModel: serviceModel,
          ),
        ),
      ),
    );
  }
}
