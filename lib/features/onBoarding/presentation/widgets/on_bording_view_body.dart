import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits/constants.dart';
import 'package:fruits/core/utils/app_colors.dart';
import 'package:fruits/core/widgets/custom_button.dart';
import 'package:fruits/features/onBoarding/presentation/widgets/on_boarding_page_view.dart';

import '../../../auth/presentation/ui/login_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {
        
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnBoardingPageView(
          pageController: pageController,
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color:currentPage == 1 ? AppColors.primaryColor : AppColors.primaryColor.withOpacity(0.5),
          ),
        ),
        const SizedBox(height: 29),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorozintalPadding),
          child: Visibility(
            maintainAnimation: true,
            maintainSize: true,
            maintainState: true,
            visible: currentPage == 0 ? false : true,
            child: GestureDetector(
              
              child: CustomButton(onPressed: () { Navigator.of(context)
                        .pushReplacementNamed(LoginView.routeName);}, text: "ابدأ الان"))),
        ),
        const SizedBox(
          height: 43,
        ),
      ],
    );
  }
}
