import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:h2m_destrib/core/Debendncy%20injection/debendncy_injection.dart';
import 'package:h2m_destrib/core/Routing/routes.dart';
import 'package:h2m_destrib/features/Home/UI/home_screen.dart';
import 'package:h2m_destrib/features/login/UI/login_screen.dart';
import 'package:h2m_destrib/features/login/logic/cubit/login_cubit.dart';
import 'package:h2m_destrib/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt.get<LoginCubit>(),
                  child: const LoginScreen(),
                ));
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
