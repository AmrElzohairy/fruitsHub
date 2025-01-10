import 'package:flutter/material.dart';
import 'package:fruits/features/onBoarding/presentation/onboarding_view.dart';

import '../../features/auth/presentation/ui/sign_in_view.dart';
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
    case SigninView.routeName:
      return MaterialPageRoute(builder: (context) => const SigninView());
    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}
