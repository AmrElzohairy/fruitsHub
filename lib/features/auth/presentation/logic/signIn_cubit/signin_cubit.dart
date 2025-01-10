import 'package:bloc/bloc.dart';
import 'package:fruits/features/auth/domain/repo/auth_repo.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/user_entity.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());
  final AuthRepo authRepo;

  Future<void> signInWithEmailAndPassword(email, password) async {
    emit(SigninLoading());
    var result = await authRepo.signInWithEmailAndPassword(email, password);
    result.fold((failure) {
      emit(SigninError(failure.message));
    }, (user) {
      emit(SigninSuccess(user));
    });
  }
}
