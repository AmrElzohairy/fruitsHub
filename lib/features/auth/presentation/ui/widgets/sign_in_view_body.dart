import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/utils/app_colors.dart';
import 'package:fruits/core/utils/app_images.dart';
import 'package:fruits/core/widgets/custom_button.dart';
import 'package:fruits/features/auth/presentation/logic/signIn_cubit/signin_cubit.dart';
import 'package:fruits/features/auth/presentation/ui/widgets/dont_have_an_account.dart';
import 'package:fruits/features/auth/presentation/ui/widgets/or_divider.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_text_form_feild.dart';
import 'social_login_button.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: "البريد الالكتروني",
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  password = value!;
                },
                hintText: "كلمة المرور",
                textInputType: TextInputType.visiblePassword,
                obscureText: true,
                suffixIcon: const Icon(
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
              CustomButton(onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  context.read<SigninCubit>().signInWithEmailAndPassword(email, password);
                }
              }, text: "تسجيل دخول"),
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
                onPressed: () {
                  context.read<SigninCubit>().signInWithGoogle();
                },
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
      ),
    );
  }
}
