part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
    required bool isLoading,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        isLoading: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: none(),
      );
}
