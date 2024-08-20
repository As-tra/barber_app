

import 'package:barber_app/models/booking_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'booking_event.dart';
part 'booking_state.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  BookingBloc() : super(BookingInitial()) {
    on<BookingEvent>((event, emit) {
      // try to booking if I can't I emit booking failure else
      // I'll show user a message indicate the success of the booking
      // and return to home
    });
  }
}
