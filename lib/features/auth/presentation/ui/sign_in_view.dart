import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/services/service_locator.dart';
import 'package:fruits/features/auth/presentation/logic/signIn_cubit/signin_cubit.dart';
import 'package:fruits/features/auth/presentation/ui/widgets/sign_in_view_body_bloc_consumer.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../domain/repo/auth_repo.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  static const routeName = 'signin';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, 'تسجيل دخول'),
        body: const SigninViewBodyBlocConsumer(),
      ),
    );
  }
}

