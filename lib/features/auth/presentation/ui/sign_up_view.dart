import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/widgets/custom_app_bar.dart';
import 'package:fruits/features/auth/domain/repo/auth_repo.dart';
import 'package:fruits/features/auth/presentation/logic/signUp_cubit/signup_cubit.dart';
import 'package:fruits/features/auth/presentation/ui/widgets/sign_up_view_body_bloc_consumer.dart';

import '../../../../core/services/service_locator.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'signUpView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, "حساب جديد"),
        body: const SignUpViewBodyBlocConsumer(),
      ),
    );
  }
}

