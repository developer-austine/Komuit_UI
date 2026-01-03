import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../main.dart';
import '../core/constants/app_constants.dart';

// Auth State Model
class AuthState {
  final bool isLoggedIn;
  final String? userName;
  final String? userEmail;
  final bool isLoading;
  final String? errorMessage;

  const AuthState({
    this.isLoggedIn = false,
    this.userName,
    this.userEmail,
    this.isLoading = false,
    this.errorMessage,
  });

  AuthState copyWith({
    bool? isLoggedIn,
    String? userName,
    String? userEmail,
    bool? isLoading,
    String? errorMessage,
  }) {
    return AuthState(
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      userName: userName ?? this.userName,
      userEmail: userEmail ?? this.userEmail,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
    );
  }
}

// Auth Provider
final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return AuthNotifier(prefs);
});

class AuthNotifier extends StateNotifier<AuthState> {
  final SharedPreferences _prefs;

  AuthNotifier(this._prefs) : super(const AuthState());

  // Check if user is already logged in
  Future<bool> checkAuthStatus() async {
    final isLoggedIn = _prefs.getBool(AppConstants.isLoggedInKey) ?? false;
    final userName = _prefs.getString(AppConstants.userNameKey);
    final userEmail = _prefs.getString(AppConstants.userEmailKey);

    if (isLoggedIn) {
      state = state.copyWith(
        isLoggedIn: true,
        userName: userName,
        userEmail: userEmail,
      );
    }

    return isLoggedIn;
  }

  // Login
  Future<bool> login(String email, String password) async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    // Simulate API call
    await Future.delayed(AppConstants.apiCallDelay);

    // Mock authentication check
    if (email == AppConstants.dummyEmail &&
        password == AppConstants.dummyPassword) {
      await _prefs.setBool(AppConstants.isLoggedInKey, true);
      await _prefs.setString(AppConstants.userEmailKey, email);
      await _prefs.setString(AppConstants.userNameKey, 'Eric Mutuma');

      state = state.copyWith(
        isLoggedIn: true,
        userName: 'Eric Mutuma',
        userEmail: email,
        isLoading: false,
      );

      return true;
    } else {
      state = state.copyWith(
        isLoading: false,
        errorMessage: AppConstants.loginErrorMsg,
      );
      return false;
    }
  }

  // Sign Up
  Future<bool> signUp(String name, String email, String password) async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    // Simulate API call
    await Future.delayed(AppConstants.apiCallDelay);

    // Mock successful signup
    await _prefs.setString(AppConstants.userNameKey, name);
    await _prefs.setString(AppConstants.userEmailKey, email);

    state = state.copyWith(
      userName: name,
      userEmail: email,
      isLoading: false,
    );

    return true;
  }

  // Verify OTP
  Future<bool> verifyOtp(String otp) async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    // Simulate API call
    await Future.delayed(AppConstants.otpVerificationDelay);

    // Mock OTP verification
    if (otp == AppConstants.dummyOtp) {
      await _prefs.setBool(AppConstants.isLoggedInKey, true);

      state = state.copyWith(
        isLoggedIn: true,
        isLoading: false,
      );

      return true;
    } else {
      state = state.copyWith(
        isLoading: false,
        errorMessage: AppConstants.otpErrorMsg,
      );
      return false;
    }
  }

  // Forgot Password
  Future<bool> sendPasswordResetEmail(String email) async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    // Simulate API call
    await Future.delayed(AppConstants.apiCallDelay);

    // Mock successful email sent
    state = state.copyWith(isLoading: false);
    return true;
  }

  // Logout
  Future<void> logout() async {
    await _prefs.setBool(AppConstants.isLoggedInKey, false);
    await _prefs.remove(AppConstants.userTokenKey);

    state = const AuthState();
  }

  // Clear error
  void clearError() {
    state = state.copyWith(errorMessage: null);
  }
}
