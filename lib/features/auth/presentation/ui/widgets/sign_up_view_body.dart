import 'package:flutter/material.dart';
import 'package:fruits/core/widgets/custom_text_form_feild.dart';
import 'package:fruits/features/auth/presentation/ui/widgets/have_an_account.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'terms_an_conditions.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

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
              hintText: "الاسم كامل",
              textInputType: TextInputType.name,
            ),
            const SizedBox(
              height: 16,
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
            TermsAndConditionsWidget(
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 16,
            ),
            CustomButton(
              text: "انشاء حساب",
              onPressed: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            HaveAnAccountWidget(),
          ],
        ),
      ),
    );
  }
}
