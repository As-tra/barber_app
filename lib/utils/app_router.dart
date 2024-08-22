import 'package:barber_app/admin/admin_view.dart';
import 'package:barber_app/models/service_model.dart';
import 'package:barber_app/views/booking_view.dart';
import 'package:barber_app/views/home_view.dart';
import 'package:barber_app/views/login_view.dart';
import 'package:barber_app/views/onboarding_view.dart';
import 'package:barber_app/views/register_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/home_view';
  static const kBookingView = '/Booking_view';
  static const kLoginView = '/Login_view';
  static const kRegisterView = '/Register_view';

  static const kAdminPanel = '/Admin_panel';
  static final router = GoRouter(
    routes: [
       GoRoute(
        path: '/',
        builder: (context, state) => const AdminView(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kBookingView,
        builder: (context, state) => BookingView(
          serviceModel: state.extra as ServiceModel,
        ),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
    ],
  );
}
