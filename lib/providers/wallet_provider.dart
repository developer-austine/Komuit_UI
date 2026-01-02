// lib/providers/wallet_provider.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/constants/app_constants.dart';

class WalletState {
  final double balance;
  final bool isLoading;

  const WalletState({
    this.balance = AppConstants.defaultWalletBalance,
    this.isLoading = false,
  });

  WalletState copyWith({
    double? balance,
    bool? isLoading,
  }) {
    return WalletState(
      balance: balance ?? this.balance,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final walletProvider =
    StateNotifierProvider<WalletNotifier, WalletState>((ref) {
  return WalletNotifier();
});

class WalletNotifier extends StateNotifier<WalletState> {
  WalletNotifier() : super(const WalletState());

  Future<bool> topUp(double amount) async {
    state = state.copyWith(isLoading: true);

    // Simulate API call
    await Future.delayed(AppConstants.apiCallDelay);

    // Mock successful top-up
    state = state.copyWith(
      balance: state.balance + amount,
      isLoading: false,
    );

    return true;
  }

  void deductFare(double fare) {
    state = state.copyWith(balance: state.balance - fare);
  }
}
