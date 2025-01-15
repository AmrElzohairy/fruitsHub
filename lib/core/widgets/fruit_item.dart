import 'package:flutter/material.dart';
import 'package:fruits/core/utils/app_colors.dart';
import 'package:fruits/core/utils/app_images.dart';
import 'package:fruits/core/utils/app_text_styles.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 250,
      decoration: const BoxDecoration(
        color: Color(0xffF3F5F7),
      ),
      child: Stack(
        children: [
          const Positioned(child: Icon(Icons.favorite_border)),
          Positioned.fill(
              child: Column(
            children: [
              Image.asset(Assets.imagesFeturedImageTest),
              const SizedBox(
                height: 24,
              ),
              ListTile(
                title: const Text(
                  "بطيخ",
                  style: TextStyles.semiBold13,
                ),
                subtitle: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '20جنية',
                        style: TextStyles.bold13.copyWith(
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      TextSpan(
                        text: '/',
                        style: TextStyles.bold13.copyWith(
                          color: AppColors.lightSecondaryColor,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyles.semiBold13.copyWith(
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      TextSpan(
                        text: 'كيلو',
                        style: TextStyles.semiBold13.copyWith(
                          color: AppColors.lightSecondaryColor,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.right,
                ),
                trailing: CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),)
        ],
      ),
    );
  }
}
