part of 'booking_bloc.dart';

sealed class BookingEvent {
  final BookingModel bookingModel;

  BookingEvent({required this.bookingModel});
}
