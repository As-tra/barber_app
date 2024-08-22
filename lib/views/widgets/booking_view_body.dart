import 'package:barber_app/bloc/bloc/booking_bloc.dart';
import 'package:barber_app/constants.dart';
import 'package:barber_app/helpers/show_snack_bar.dart';
import 'package:barber_app/models/booking_model.dart';
import 'package:barber_app/models/date_picker_model.dart';
import 'package:barber_app/models/service_model.dart';
import 'package:barber_app/services/shared_pref.dart';
import 'package:barber_app/utils/assets.dart';
import 'package:barber_app/utils/service_locator.dart';
import 'package:barber_app/views/widgets/booking_view_app_bar.dart';
import 'package:barber_app/views/widgets/custom_button.dart';
import 'package:barber_app/views/widgets/date_shudler.dart';
import 'package:bottom_picker/bottom_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class BookingViewBody extends StatefulWidget {
  const BookingViewBody({super.key, required this.serviceModel});
  final ServiceModel serviceModel;

  @override
  State<BookingViewBody> createState() => _BookingViewBodyState();
}

class _BookingViewBodyState extends State<BookingViewBody> {
  Future<void> _selectDate() async {
    BottomPicker.date(
      pickerTitle: const Text(
        'Set a date',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.black,
        ),
      ),
      onSubmit: (date) {
        _currentDate = date;
        setState(() {});
      },
      minDateTime: DateTime.now(),
      maxDateTime: DateTime(2025),
      initialDateTime: DateTime.now(),
      buttonSingleColor: kSecondary,
    ).show(context);
  }

  Future<void> _selectTime() async {
    BottomPicker.time(
      initialTime: Time.now(),
      pickerTitle: const Text(
        'Set a time',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.black,
        ),
      ),
      onSubmit: (time) {
        _currentTime = time;
        setState(() {});
      },
      buttonSingleColor: kSecondary,
    ).show(context);
  }

  DateTime _currentDate = DateTime.now();
  DateTime _currentTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Padding(
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
              widget.serviceModel.title,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            DateShudler(
              item: DatePickerModel(
                  title: 'Set your Date',
                  text:
                      '${_currentDate.day}/${_currentDate.month}/${_currentDate.year}',
                  iconData: Icons.calendar_month,
                  ontap: _selectDate),
            ),
            const SizedBox(height: 30),
            DateShudler(
              item: DatePickerModel(
                  title: 'Set your Time',
                  text: DateFormat.jm().format(_currentTime),
                  iconData: Icons.alarm,
                  ontap: _selectTime),
            ),
            const SizedBox(height: 20),
            BlocConsumer<BookingBloc, BookingState>(
              listener: (context, state) {
                if (state is BookingSuccess) {
                  showSnackBar(context, 'Booked Successfully');
                } else if (state is BookingFailure) {
                  showSnackBar(context, state.message);
                }
              },
              builder: (context, state) => AbsorbPointer(
                absorbing: state is BookingLoading,
                child: CustomButton(
                  text: 'Book Now',
                  ontap: () {
                    // just try to add the date and time inside the booking bloc itself :)
                    // log(_currentDate.toString());
                    // log(_currentTime.toString());
                    BlocProvider.of<BookingBloc>(context).add(
                      BookingEvent(
                        bookingModel: BookingModel(
                          name: getIt<SharedPrefrenceHelper>().getUserName() ??
                              'Unknown',
                          email: getIt<SharedPrefrenceHelper>().getEmail() ??
                              'Unknown',
                          date: _currentDate.add(
                            Duration(
                              hours: _currentTime.hour,
                              minutes: _currentTime.minute,
                            ),
                          ),
                          service: widget.serviceModel.title,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
