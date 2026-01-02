# Komiut Transport App

A modern public transport mobile application built with Flutter for seamless commuter experiences across African cities.

## 📱 Features

### Authentication Flow
- **Splash Screen** - Animated branding with automatic routing
- **Login** - Email and password authentication
- **Sign Up** - User registration with validation
- **Forgot Password** - Password reset functionality
- **Two-Factor Authentication** - 6-digit OTP verification

### Main App Features
- **Home Screen** - Personalized dashboard with wallet balance and quick actions
- **Activity** - Complete trip history with route details and status
- **Payments** - Wallet management and payment history
- **Settings** - User profile, preferences, and account management

### Additional Features
- Dark mode support with persistent theme preference
- Notifications toggle
- Responsive UI across different screen sizes
- Smooth animations and transitions
- Proper loading and empty states

## 🏗️ Architecture

### Project Structure
```
lib/
├── core/
│   ├── constants/
│   │   └── app_constants.dart        # App-wide constants
│   ├── theme/
│   │   └── app_theme.dart            # Light & dark theme configuration
│   └── widgets/                       # Reusable widgets
├── features/
│   ├── splash/
│   │   └── presentation/
│   │       └── splash_screen.dart
│   ├── auth/
│   │   ├── data/                      # Mock data & repositories
│   │   ├── domain/                    # Business logic
│   │   └── presentation/
│   │       ├── screens/               # Auth screens
│   │       └── widgets/               # Auth-specific widgets
│   ├── home/
│   │   └── presentation/
│   ├── activity/
│   │   ├── data/
│   │   │   └── trip_model.dart       # Trip data model
│   │   └── presentation/
│   ├── payment/
│   │   ├── data/
│   │   │   └── payment_model.dart    # Payment data model
│   │   └── presentation/
│   └── settings/
│       └── presentation/
├── providers/
│   ├── auth_provider.dart            # Authentication state management
│   ├── theme_provider.dart           # Theme state management
│   ├── wallet_provider.dart          # Wallet state management
│   └── router_provider.dart          # Navigation configuration
└── main.dart                          # App entry point
```

### Architecture Pattern
The app follows a **Feature-First Clean Architecture** approach:

- **Presentation Layer**: UI components (screens and widgets)
- **Domain Layer**: Business logic and use cases
- **Data Layer**: Models, repositories, and mock data sources

### State Management
**Riverpod** is used for state management throughout the app:

- `StateNotifierProvider` for complex state (auth, wallet, theme)
- `Provider` for read-only dependencies (router, SharedPreferences)
- Clean separation between UI and business logic
- Easy testing and maintainability

### Routing
**GoRouter** handles navigation:

- Declarative routing configuration
- Type-safe navigation
- Deep linking support
- Easy to extend and maintain

## 🎨 Design Principles

- **Modern UI** - Clean, contemporary design with smooth animations
- **Consistent Styling** - Unified color scheme, typography, and spacing
- **Responsive** - Adapts to different screen sizes
- **Accessible** - Proper contrast ratios and semantic markup
- **User-Friendly** - Intuitive navigation and clear feedback

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (^3.5.0)
- Dart SDK
- Android Studio / VS Code
- Physical device or emulator

### Installation

1. **Clone the repository**
```bash
git clone <repository-url>
cd komiut_transport_app
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Run the app**
```bash
# For Android device
flutter run -d <device-id>

# For all available devices
flutter devices
flutter run
```

### Demo Credentials

For testing the authentication flow:

**Login:**
- Email: `user@komiut.com`
- Password: `password123`

**Two-Factor Authentication:**
- OTP: `123456`

## 📦 Dependencies

```yaml
dependencies:
  flutter_riverpod: ^2.4.9      # State management
  go_router: ^13.0.0            # Routing
  shared_preferences: ^2.2.2    # Local storage
  google_fonts: ^6.1.0          # Typography
  flutter_form_builder: ^9.1.1  # Form handling
  form_builder_validators: ^11.1.2  # Validation
  intl: ^0.19.0                 # Date formatting
```

## 🧪 Testing

The app uses mock data for all operations:

- **Authentication** - Simulated login/signup with dummy credentials
- **Trips** - Pre-defined trip history with mock data
- **Payments** - Mock payment transactions
- **API Calls** - Simulated delays to mimic real API behavior

## 🎯 Future Enhancements

- [ ] Unit and widget tests
- [ ] Integration tests
- [ ] Real API integration
- [ ] Localization (multiple languages)
- [ ] Advanced animations
- [ ] Offline mode with local database
- [ ] Push notifications
- [ ] Biometric authentication
- [ ] QR code scanning for tickets
- [ ] Real-time bus tracking

## 📝 Assumptions

1. **No Backend Required** - All data is mocked locally
2. **Single Currency** - KES (Kenyan Shillings) is used throughout
3. **Simplified Payment Flow** - Top-up is instant without actual payment gateway
4. **Mock Authentication** - No real authentication server
5. **Static Routes** - Routes and trip data are pre-defined
6. **Session Persistence** - Uses SharedPreferences for simple state persistence

## 🏆 Key Highlights

### Code Quality
- Clean, readable, and well-documented code
- Consistent naming conventions
- Proper error handling
- Efficient state management

### UI/UX
- Smooth animations and transitions
- Intuitive navigation flow
- Clear visual feedback
- Responsive design

### Architecture
- Scalable folder structure
- Separation of concerns
- Easy to test and maintain
- Production-ready patterns

## 📱 Screenshots

*Screenshots can be added here*

## 👨‍💻 Developer Notes

### Important Files

1. **main.dart** - App initialization with Riverpod
2. **app_constants.dart** - All constants, routes, and messages
3. **app_theme.dart** - Complete theme configuration
4. **auth_provider.dart** - Authentication logic
5. **router_provider.dart** - Navigation setup

### Adding New Features

To add a new feature:

1. Create feature folder in `lib/features/`
2. Add data models in `data/` folder
3. Implement screens in `presentation/` folder
4. Create provider in `lib/providers/` if needed
5. Add route in `router_provider.dart`

## 📄 License

This project was created for evaluation purposes as part of the Komiut Flutter Developer take-home assignment.

## 🙏 Acknowledgments

Built with Flutter and lots of ☕

---

**Submission Date:** January 2026  
**Assignment:** Komiut Flutter Take-Home Assignment  
**Developer:** [Your Name]