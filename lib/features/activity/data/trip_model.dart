// lib/features/activity/data/trip_model.dart

class Trip {
  final String id;
  final String routeName;
  final DateTime date;
  final double fare;
  final TripStatus status;
  final String from;
  final String to;

  Trip({
    required this.id,
    required this.routeName,
    required this.date,
    required this.fare,
    required this.status,
    required this.from,
    required this.to,
  });
}

enum TripStatus {
  completed,
  failed,
}

// Mock Trip Data
final mockTrips = [
  Trip(
    id: '1',
    routeName: 'Route 14A - CBD Express',
    date: DateTime.now().subtract(const Duration(hours: 2)),
    fare: 150.00,
    status: TripStatus.completed,
    from: 'Westlands',
    to: 'CBD',
  ),
  Trip(
    id: '2',
    routeName: 'Route 23 - Eastlands Line',
    date: DateTime.now().subtract(const Duration(days: 1)),
    fare: 120.00,
    status: TripStatus.completed,
    from: 'CBD',
    to: 'Embakasi',
  ),
  Trip(
    id: '3',
    routeName: 'Route 8 - South Express',
    date: DateTime.now().subtract(const Duration(days: 2)),
    fare: 200.00,
    status: TripStatus.failed,
    from: 'Karen',
    to: 'CBD',
  ),
  Trip(
    id: '4',
    routeName: 'Route 11 - North Circuit',
    date: DateTime.now().subtract(const Duration(days: 3)),
    fare: 180.00,
    status: TripStatus.completed,
    from: 'Kasarani',
    to: 'Westlands',
  ),
  Trip(
    id: '5',
    routeName: 'Route 5A - Airport Link',
    date: DateTime.now().subtract(const Duration(days: 5)),
    fare: 250.00,
    status: TripStatus.completed,
    from: 'CBD',
    to: 'JKIA',
  ),
  Trip(
    id: '6',
    routeName: 'Route 19 - Campus Shuttle',
    date: DateTime.now().subtract(const Duration(days: 7)),
    fare: 100.00,
    status: TripStatus.completed,
    from: 'Kikuyu',
    to: 'University',
  ),
];
