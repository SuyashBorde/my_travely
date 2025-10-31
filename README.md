# MyTravely 🏨✈️

A Flutter-based travel application that helps users discover and book hotels with Google authentication integration.

## Features

- **Google Sign-In Authentication** - Secure login using Google accounts
- **Hotel Search & Discovery** - Browse and search for hotels
- **Real-time Data** - Firebase integration for dynamic content
- **Cross-platform** - Works on Android, iOS, and Web

## Application Flow

### 1. Authentication Process
- App starts with `AuthWrapper` that checks user authentication status
- If not authenticated, user is redirected to `GoogleSignInPage`
- Users can sign in using their Google account via Firebase Auth
- Upon successful authentication, user is redirected to the main application

### 2. Main Application
- **Home Page** - Main dashboard showing hotel recommendations and search functionality
- **Search Results** - Displays filtered hotels based on user search criteria
- **Hotel Details** - Individual hotel information with booking options

### 3. Data Management
- **Firebase Integration** - Real-time database for hotel data and user management
- **Hotel Service** - Handles API calls and data fetching for hotel information
- **Authentication Service** - Manages Google Sign-In and user session

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── firebase_options.dart     # Firebase configuration
├── models/
│   └── hotel.dart           # Hotel data model
├── screens/
│   ├── auth_wrapper.dart    # Authentication state management
│   ├── google_signin_page.dart # Google sign-in interface
│   ├── home_page.dart       # Main dashboard
│   └── search_results_page.dart # Hotel search results
├── services/
│   ├── auth_service.dart    # Authentication logic
│   └── hotel_service.dart   # Hotel data management
└── widgets/
    └── hotel_card.dart      # Reusable hotel display component
```

## Technologies Used

- **Flutter** - Cross-platform mobile development framework
- **Firebase Auth** - User authentication
- **Firebase Core** - Firebase SDK integration
- **Google Sign-In** - Google authentication service
- **HTTP** - API communication

## Getting Started

### Prerequisites
- Flutter SDK (3.9.2 or higher)
- Firebase project setup
- Google Sign-In configuration

### Installation

1. Clone the repository:
```bash
git clone https://github.com/SuyashBorde/my_travely.git
cd my_travely
```

2. Install dependencies:
```bash
flutter pub get
```

3. Configure Firebase:
   - Add your `google-services.json` (Android) and `GoogleService-Info.plist` (iOS)
   - Update `firebase_options.dart` with your project configuration

4. Run the application:
```bash
flutter run
```

## Configuration

### Firebase Setup
1. Create a Firebase project at [Firebase Console](https://console.firebase.google.com/)
2. Enable Authentication with Google Sign-In provider
3. Add your app's package name and SHA-1 certificate fingerprint
4. Download configuration files and place them in appropriate directories

### Google Sign-In Setup
1. Configure OAuth consent screen in Google Cloud Console
2. Add authorized domains for your application
3. Ensure proper client IDs are configured for each platform

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  firebase_core: ^4.2.0
  firebase_auth: ^6.1.1
  google_sign_in: ^6.2.1
  http: ^1.5.0
  cupertino_icons: ^1.0.8
```

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-feature`)
3. Commit your changes (`git commit -am 'Add new feature'`)
4. Push to the branch (`git push origin feature/new-feature`)
5. Create a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contact

**Developer:** Suyash Borde  
**Repository:** [https://github.com/SuyashBorde/my_travely](https://github.com/SuyashBorde/my_travely)

---

*Built with ❤️ using Flutter and Firebase*