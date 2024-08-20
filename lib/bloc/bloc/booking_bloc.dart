import 'package:barber_app/models/booking_model.dart';
import 'package:barber_app/services/booking_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'booking_event.dart';
part 'booking_state.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  BookingBloc() : super(BookingInitial()) {
    on<BookingEvent>((event, emit) async {
      // try to booking if I can't I emit booking failure else
      // I'll show user a message indicate the success of the booking
      // and return to home
      bool bookingResult = await bookingService(model: event.bookingModel);
      if (bookingResult) {
        emit(BookingSuccess());
      } else {
        emit(BookingFailure(message: 'This time is Already taken '));
      }
    });
  }
  
}
