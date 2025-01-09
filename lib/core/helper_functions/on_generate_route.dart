import 'package:flutter/material.dart';
import 'package:fruits/features/onBoarding/presentation/onboarding_view.dart';

import '../../features/auth/presentation/ui/login_view.dart';
import '../../features/auth/presentation/ui/sign_up_view.dart';
import '../../features/splash/presentation/ui/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
      case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}
