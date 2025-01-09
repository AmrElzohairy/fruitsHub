import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits/features/auth/presentation/ui/sign_up_view.dart';

import '../../../../../core/utils/app_colors.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          const TextSpan(
            text: "ليس لديك حساب؟ ",
            style: TextStyle(
                fontSize: 16,
                fontFamily: "cairo",
                fontWeight: FontWeight.w600,
                height: 0.09),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, SignUpView.routeName);
              },
            text: "انشاء حساب",
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
