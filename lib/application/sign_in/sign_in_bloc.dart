import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:productmate/domain/auth/auth_failures.dart';
import 'package:productmate/domain/auth/auth_repo.dart';
import 'package:productmate/domain/auth/auth_value_objects.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthRepo _authRepo;
  SignInBloc(this._authRepo) : super(SignInState.initial()) {
    on<SignInEvent>((event, emit) async {
      await event.map(
        emailChanged: (e) {
          emit(state.copyWith(
              emailAddress: EmailAddress(e.emailStr),
              authFailureOrSuccessOption: none()));
        },
        passwordChanged: (e) {
          emit(state.copyWith(
              password: Password(e.passwordStr),
              authFailureOrSuccessOption: none()));
        },
        registerWithEmailAndPasswordPressed: (e) async {
          await _performActionOnAuthFacadeWithEmailAndPassword(
            event,
            emit,
            _authRepo.registerWithEmailAndPassword,
          );
        },
        signInWithEmailAndPasswordPressed: (e) async {
          await _performActionOnAuthFacadeWithEmailAndPassword(
            event,
            emit,
            _authRepo.signInWithEmailAndPassword,
          );
        },
      );
    });
  }

  Future<void> _performActionOnAuthFacadeWithEmailAndPassword(
    SignInEvent event,
    Emitter<SignInState> emit,
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    }) forwardedCall,
  ) async {
    final bool isEmailValid = state.emailAddress.isValid();
    final bool isPasswordValid = state.password.isValid();
    Either<AuthFailure, Unit>? failureOrSuccess;

    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isLoading: true,
        authFailureOrSuccessOption: none(),
      ));
      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );

      emit(
        state.copyWith(
            isLoading: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: optionOf(failureOrSuccess)),
      );
    }
    emit(state.copyWith(
        isLoading: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess)));
  }
}
