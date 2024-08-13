import 'package:flutter/material.dart';
import 'package:h2m_destrib/core/Routing/routes.dart';
import 'package:h2m_destrib/feature/Home/UI/login_screen.dart';
import 'package:h2m_destrib/feature/onboarding/onboarding_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const Scaffold());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text("Page not found check network connection"),
                  ),
                ));
    }
  }
}
