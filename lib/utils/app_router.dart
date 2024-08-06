import 'package:barber_app/views/booking_view.dart';
import 'package:barber_app/views/home_view.dart';
import 'package:barber_app/views/onboarding_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/home_view';
  static const kBookingView = 'Booking_view';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const BookingView(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
