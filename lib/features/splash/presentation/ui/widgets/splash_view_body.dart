import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits/core/utils/app_images.dart';
import 'package:fruits/features/home/presentation/ui/home_view.dart';

import '../../../../../constants.dart';
import '../../../../../core/services/fire_base_auth_service.dart';
import '../../../../../core/services/shared_preferences_singletone.dart';
import '../../../../auth/presentation/ui/sign_in_view.dart';
import '../../../../onBoarding/presentation/onboarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(
          Assets.imagesSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void excuteNavigation() {
    bool isOnBaordingSeen = Prefs.getBool(kIsOnBaordingSeen);

    Future.delayed(const Duration(seconds: 3), () async {
      if (!mounted) return;
      if (isOnBaordingSeen) {
        var isLoggedIn = FirebaseAuthService().isSignedIn();
        if (isLoggedIn) {
          if (mounted) {
            Navigator.pushReplacementNamed(context, HomeView.routeName);
          }
        } else {
          if (mounted) {
            Navigator.pushReplacementNamed(context, SigninView.routeName);
          }
        }
      } else {
        if (mounted) {
          Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
        }
      }
    });
  }
}
