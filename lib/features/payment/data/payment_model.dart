// lib/features/payment/data/payment_model.dart

class Payment {
  final String id;
  final String description;
  final double amount;
  final DateTime date;
  final PaymentType type;
  final PaymentStatus status;

  Payment({
    required this.id,
    required this.description,
    required this.amount,
    required this.date,
    required this.type,
    required this.status,
  });
}

enum PaymentType {
  topUp,
  fareDeduction,
}

enum PaymentStatus {
  success,
  failed,
  pending,
}

// Mock Payment Data
final mockPayments = [
  Payment(
    id: '1',
    description: 'Wallet Top-up via M-Pesa',
    amount: 1000.00,
    date: DateTime.now().subtract(const Duration(hours: 3)),
    type: PaymentType.topUp,
    status: PaymentStatus.success,
  ),
  Payment(
    id: '2',
    description: 'Trip fare - Route 14A',
    amount: -150.00,
    date: DateTime.now().subtract(const Duration(hours: 5)),
    type: PaymentType.fareDeduction,
    status: PaymentStatus.success,
  ),
  Payment(
    id: '3',
    description: 'Wallet Top-up via Card',
    amount: 500.00,
    date: DateTime.now().subtract(const Duration(days: 1)),
    type: PaymentType.topUp,
    status: PaymentStatus.success,
  ),
  Payment(
    id: '4',
    description: 'Trip fare - Route 23',
    amount: -120.00,
    date: DateTime.now().subtract(const Duration(days: 1)),
    type: PaymentType.fareDeduction,
    status: PaymentStatus.success,
  ),
  Payment(
    id: '5',
    description: 'Trip fare - Route 8',
    amount: -200.00,
    date: DateTime.now().subtract(const Duration(days: 2)),
    type: PaymentType.fareDeduction,
    status: PaymentStatus.failed,
  ),
  Payment(
    id: '6',
    description: 'Wallet Top-up via M-Pesa',
    amount: 2000.00,
    date: DateTime.now().subtract(const Duration(days: 4)),
    type: PaymentType.topUp,
    status: PaymentStatus.success,
  ),
];
