import 'package:flutter/material.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_notification_widget.dart';

class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(Assets.imagesProfileImage),
      trailing: const NotificationWidget(),
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


