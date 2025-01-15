import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class BestSellerHead extends StatelessWidget {
  const BestSellerHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "الأكثر مبيعًا",
          style: TextStyles.bold16.copyWith(color: Colors.black),
        ),
        const Spacer(),
        Text(
          "المزيد",
          style: TextStyles.regular13.copyWith(color: const Color(0xff949D9E)),
        )
      ],
    );
  }
}
