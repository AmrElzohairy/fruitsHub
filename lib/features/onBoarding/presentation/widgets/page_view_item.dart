import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits/core/utils/app_text_styles.dart';
import 'package:fruits/features/auth/presentation/ui/login_view.dart';

import '../../../../constants.dart';
import '../../../../core/services/shared_preferences_singletone.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgroundImage,
      required this.subtitle,
      required this.title,
      required this.isVisible});
  final String image, backgroundImage, subtitle;
  final Widget title;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                  child: SvgPicture.asset(
                backgroundImage,
                fit: BoxFit.fill,
              )),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                visible: isVisible,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: GestureDetector(
                      onTap: () {
                        Prefs.setBool(kIsOnBaordingSeen, true);

                        Navigator.of(context)
                            .pushReplacementNamed(LoginView.routeName);
                      },
                      child: Text(
                        "تخطي",
                        style: TextStyles.regular13
                            .copyWith(color: Color(0XFF949D9E)),
                      )),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 64),
        title,
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyles.regular13.copyWith(
              color: const Color(0xff4E5456),
            ),
          ),
        ),
      ],
    );
  }
}
