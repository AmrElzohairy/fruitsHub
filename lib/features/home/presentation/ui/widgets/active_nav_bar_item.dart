import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits/core/utils/app_colors.dart';

import '../../../../../core/utils/app_text_styles.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({
    super.key,
    required this.iconImage,
    required this.text,
  });
  final String iconImage;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: ShapeDecoration(
            color: const Color(0xffEEEEEE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: AppColors.primaryColor),
                child: Center(
                    child: SvgPicture.asset(
                  iconImage,
                  height: 20,
                )),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                text,
                style: TextStyles.semiBold11
                    .copyWith(color: AppColors.primaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
