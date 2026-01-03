import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../features/splash/presentation/splash_screen.dart';
import '../features/auth/presentation/screens/login_screen.dart';
import '../features/auth/presentation/screens/signup_screen.dart';
import '../features/auth/presentation/screens/forgot_password_screen.dart';
import '../features/auth/presentation/screens/two_factor_screen.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/activity/presentation/activity_screen.dart';
import '../features/payment/presentation/payment_screen.dart';
import '../features/settings/presentation/settings_screen.dart';
import '../core/constants/app_constants.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppConstants.splashRoute,
    routes: [
      GoRoute(
        path: AppConstants.splashRoute,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppConstants.loginRoute,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppConstants.signUpRoute,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: AppConstants.forgotPasswordRoute,
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: AppConstants.twoFactorRoute,
        builder: (context, state) => const TwoFactorScreen(),
      ),
      GoRoute(
        path: AppConstants.homeRoute,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: AppConstants.activityRoute,
        builder: (context, state) => const ActivityScreen(),
      ),
      GoRoute(
        path: AppConstants.paymentRoute,
        builder: (context, state) => const PaymentScreen(),
      ),
      GoRoute(
        path: AppConstants.settingsRoute,
        builder: (context, state) => const SettingsScreen(),
      ),
    ],
  );
});
