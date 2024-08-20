part of 'booking_bloc.dart';

sealed class BookingState {}

final class BookingInitial extends BookingState {}

final class BookingSuccess extends BookingState {}

final class BookingFailure extends BookingState {
  final String message;
  BookingFailure({required this.message});
}
