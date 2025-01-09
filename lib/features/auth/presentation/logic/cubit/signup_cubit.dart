import 'package:bloc/bloc.dart';
import 'package:fruits/features/auth/domain/repo/auth_repo.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/user_entity.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(email, password, name) async {
    emit(SignupLoading());
    var result =
        await authRepo.createUserWithEmailAndPassword(email, password, name);
    result.fold((failure) {
      emit(SignupFailure(failure.message));
    }, (user) {
      emit(SignupSuccess(user));
    });
  }
}
