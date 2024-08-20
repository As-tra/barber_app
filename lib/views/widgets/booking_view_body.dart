import 'package:barber_app/bloc/bloc/booking_bloc.dart';
import 'package:barber_app/helpers/show_snack_bar.dart';
import 'package:barber_app/models/booking_model.dart';
import 'package:barber_app/models/service_model.dart';
import 'package:barber_app/providers/date_time_provider.dart';
import 'package:barber_app/services/shared_pref.dart';
import 'package:barber_app/utils/assets.dart';
import 'package:barber_app/utils/service_locator.dart';
import 'package:barber_app/views/widgets/booking_view_app_bar.dart';
import 'package:barber_app/views/widgets/custom_button.dart';
import 'package:barber_app/views/widgets/date_sheduler_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class BookingViewBody extends StatelessWidget {
  const BookingViewBody({super.key, required this.serviceModel});
  final ServiceModel serviceModel;

  @override
  Widget build(BuildContext context) {
    return Consumer<DateTimeProvider>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
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
              Image.asset(Assets.imagesDiscount),
              const SizedBox(height: 20),
              Text(
                serviceModel.title,
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              const DateShedulerGroup(),
              const SizedBox(height: 20),
              BlocListener<BookingBloc, BookingState>(
                listener: (context, state) {
                  if (state is BookingSuccess) {
                    showSnackBar(context, 'Booked Successfully');
                  } else if (state is BookingFailure) {
                    showSnackBar(context, state.message);
                  }
                },
                child: CustomButton(
                  text: 'Book Now',
                  ontap: () {
                    // just try to add the date and time inside the booking bloc itself :)
                    BlocProvider.of<BookingBloc>(context).add(
                      BookingEvent(
                        bookingModel: BookingModel(
                          name: getIt<SharedPrefrenceHelper>().getUserName() ?? 'Unknown',
                          email: getIt<SharedPrefrenceHelper>().getEmail() ?? 'Unknown',
                          date: value.dateTime,
                          time: value.timeOfDay,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
