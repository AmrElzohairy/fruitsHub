import 'package:flutter/material.dart';
import 'package:fruits/core/widgets/custom_app_bar.dart';
import 'package:fruits/features/auth/presentation/ui/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'signUpView';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar( context ,  "حساب جديد"),
      body: const SignUpViewBody(),
    );
  }
}