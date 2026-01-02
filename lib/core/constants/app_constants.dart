class AppConstants {
  // App Info
  static const String appName = 'Komiut';
  static const String appTagline = 'Seamless Public Transport';

  // Routes
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String signUpRoute = '/signup';
  static const String forgotPasswordRoute = '/forgot-password';
  static const String twoFactorRoute = '/two-factor';
  static const String homeRoute = '/home';
  static const String activityRoute = '/activity';
  static const String paymentRoute = '/payment';
  static const String settingsRoute = '/settings';

  // Storage Keys
  static const String isLoggedInKey = 'isLoggedIn';
  static const String userTokenKey = 'userToken';
  static const String userNameKey = 'userName';
  static const String userEmailKey = 'userEmail';
  static const String isDarkModeKey = 'isDarkMode';
  static const String notificationsEnabledKey = 'notificationsEnabled';

  // Dummy Credentials (for mocking)
  static const String dummyEmail = 'user@komiut.com';
  static const String dummyPassword = 'password123';
  static const String dummyOtp = '123456';

  // Animation Durations
  static const Duration splashDuration = Duration(seconds: 3);
  static const Duration otpVerificationDelay = Duration(seconds: 2);
  static const Duration apiCallDelay = Duration(seconds: 1);

  // Validation Messages
  static const String emailRequiredMsg = 'Email is required';
  static const String emailInvalidMsg = 'Please enter a valid email';
  static const String passwordRequiredMsg = 'Password is required';
  static const String passwordLengthMsg =
      'Password must be at least 6 characters';
  static const String passwordMismatchMsg = 'Passwords do not match';
  static const String nameRequiredMsg = 'Full name is required';
  static const String otpRequiredMsg = 'OTP is required';
  static const String otpLengthMsg = 'OTP must be 6 digits';

  // Success Messages
  static const String loginSuccessMsg = 'Login successful!';
  static const String signUpSuccessMsg = 'Account created successfully!';
  static const String otpSentMsg = 'OTP sent to your email';
  static const String otpVerifiedMsg = 'OTP verified successfully!';
  static const String passwordResetMsg =
      'Password reset link sent to your email';
  static const String topUpSuccessMsg = 'Wallet topped up successfully!';

  // Error Messages
  static const String loginErrorMsg = 'Invalid email or password';
  static const String otpErrorMsg = 'Invalid OTP. Please try again';
  static const String networkErrorMsg = 'Network error. Please try again';
  static const String genericErrorMsg =
      'Something went wrong. Please try again';

  // UI Text
  static const String welcomeBack = 'Welcome back';
  static const String createAccount = 'Create your account';
  static const String forgotPasswordTitle = 'Forgot Password?';
  static const String resetPasswordDesc =
      'Enter your email to receive a password reset link';
  static const String verifyOtpTitle = 'Verify OTP';
  static const String verifyOtpDesc =
      'Enter the 6-digit code sent to your email';

  // Wallet & Payment
  static const double defaultWalletBalance = 2500.00;
  static const String currencySymbol = 'KES';

  // Empty State Messages
  static const String noTripsMsg = 'No trips yet';
  static const String noTripsDesc = 'Your recent trips will appear here';
  static const String noPaymentsMsg = 'No payments yet';
  static const String noPaymentsDesc = 'Your payment history will appear here';
}
