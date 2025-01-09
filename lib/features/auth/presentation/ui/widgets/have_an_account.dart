import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          const TextSpan(
            text: "لدىك حساب بالفعل؟ ", 
            style: TextStyle(
                fontSize: 16,
                fontFamily: "cairo",
                fontWeight: FontWeight.w600,
                height: 0.09),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pop(context);
              },
            text: "تسجيل دخول",
            style: const TextStyle(
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
