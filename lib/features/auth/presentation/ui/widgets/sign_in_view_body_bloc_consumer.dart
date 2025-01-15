import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/features/auth/presentation/ui/widgets/sign_in_view_body.dart';
import 'package:fruits/features/home/presentation/ui/home_view.dart';

import '../../../../../core/helper_functions/build_error_messgae.dart';
import '../../../../../core/widgets/custom_progress_hud.dart';
import '../../logic/signIn_cubit/signin_cubit.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          Navigator.pushNamed(context , HomeView.routeName);
        }
        if (state is SigninError) {
          buildErrorMessage(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
            isLoading: state is SigninLoading ? true : false,
            child: const SigninViewBody());
      },
    );
  }
}
