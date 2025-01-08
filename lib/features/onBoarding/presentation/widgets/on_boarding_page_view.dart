import 'package:flutter/material.dart';
import 'package:fruits/core/utils/app_images.dart';
import 'package:fruits/core/utils/app_text_styles.dart';
import 'package:fruits/features/onBoarding/presentation/widgets/page_view_item.dart';

import '../../../../core/utils/app_colors.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: Assets.imagesOnBoarding1ImageSvg,
          backgroundImage: Assets.imagesOnBoarding1ImageBackgroundSvg,
          subtitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "مرحبا بك في",
                style: TextStyles.bold23,
              ),
              Text(
                " HUB",
                style:
                    TextStyles.bold23.copyWith(color: AppColors.secondaryColor),
              ),
              Text(
                " Fruit",
                style:
                    TextStyles.bold23.copyWith(color: AppColors.primaryColor),
              ),
            ],
          ),
          isVisible: true,
        ),
        const PageViewItem(
          image: Assets.imagesOnBoarding2Image,
          backgroundImage: Assets.imagesOnBoardingImage2Background,
          subtitle:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ابحث وتسوق",
                style: TextStyle(
                    fontSize: 23,
                    height: 0,
                    color: Colors.black,
                    fontFamily: "cairo",
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          isVisible: false,
        ),
      ],
    ));
  }
}
