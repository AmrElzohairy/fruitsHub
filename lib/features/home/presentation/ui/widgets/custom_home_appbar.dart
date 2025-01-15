import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(Assets.imagesProfileImage),
      trailing: Container(
          padding: const EdgeInsets.all(12),
          decoration: const ShapeDecoration(
              color: Color(0xffEEF8ED), shape: OvalBorder()),
          child: SvgPicture.asset(Assets.imagesNotification)),
      title: Text(
        "صباح الخير !..",
        style: TextStyles.bold16.copyWith(
            color: const Color(0xff949D9E), fontWeight: FontWeight.w400),
      ),
      subtitle: Text(
        "عمرو احمد",
        style: TextStyles.bold16
            .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
      ),
    );
  }
}
