import 'package:flutter/material.dart';
import 'package:fruits/features/onBoarding/presentation/onboarding_view.dart';

import '../../features/splash/presentation/ui/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}
