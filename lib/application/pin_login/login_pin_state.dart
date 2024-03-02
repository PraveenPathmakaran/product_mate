part of 'login_pin_bloc.dart';

@freezed
class LoginPinState with _$LoginPinState {
  const factory LoginPinState({
    required LoginPin loginPin,
    required bool isLoading,
    required bool showErrorMessage,
    required Option<bool> isPinFound,
    required Option<Either<LoginPinFalure, Unit>> pinFailureOrSuccess,
  }) = _PinLoginState;

  factory LoginPinState.initial() => LoginPinState(
        loginPin: LoginPin(''),
        isLoading: false,
        showErrorMessage: false,
        isPinFound: none(),
        pinFailureOrSuccess: none(),
      );
}
