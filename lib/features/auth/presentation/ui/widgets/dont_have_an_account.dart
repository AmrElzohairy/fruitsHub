import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "ليس لديك حساب؟ ",
            style: TextStyle(
                fontSize: 16,
                fontFamily: "cairo",
                fontWeight: FontWeight.w600,
                height: 0.09),
          ),
          TextSpan(
            text: "انشاء حساب",
            style: TextStyle(
                fontSize: 16,
                color: AppColors.primaryColor,
                fontFamily: "cairo",
                fontWeight: FontWeight.w600,
                height: 0.09),
          ),
        ],
      ),
    );
  }
}
