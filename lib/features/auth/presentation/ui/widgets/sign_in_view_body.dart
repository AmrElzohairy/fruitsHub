import 'package:flutter/material.dart';
import 'package:fruits/core/utils/app_colors.dart';
import 'package:fruits/core/utils/app_images.dart';
import 'package:fruits/core/widgets/custom_button.dart';
import 'package:fruits/features/auth/presentation/ui/widgets/dont_have_an_account.dart';
import 'package:fruits/features/auth/presentation/ui/widgets/or_divider.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_text_form_feild.dart';
import 'social_login_button.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomTextFormField(
              hintText: "البريد الالكتروني",
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFormField(
              hintText: "كلمة المرور",
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("نسيت كلمة المرور؟",
                    style: TextStyles.semiBold13
                        .copyWith(color: AppColors.lightPrimaryColor)),
              ],
            ),
            const SizedBox(
              height: 33,
            ),
            CustomButton(onPressed: () {}, text: "تسجيل دخول"),
            const SizedBox(
              height: 33,
            ),
            const DontHaveAnAccountWidget(),
            const SizedBox(
              height: 33,
            ),
            const OrDivider(),
            const SizedBox(
              height: 33,
            ),
            SocialLoginButton(
              image: Assets.imagesGoogleIcon,
              onPressed: () {},
              title: "تسجيل دخول باستخدام جوجل",
            ),
            const SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              image: Assets.imagesAppleIcon,
              onPressed: () {},
              title: "تسجيل دخول باستخدام ايفون",
            ),
            const SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              image: Assets.imagesFaceeBookIcon,
              onPressed: () {},
              title: "تسجيل دخول باستخدام فيسبوك",
            ),
          ],
        ),
      ),
    );
  }
}
