import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:productmate/domain/pin_login/login_failure.dart';
import 'package:productmate/domain/pin_login/pin_value_object.dart';

import '../../domain/pin_login/login_pin_repo.dart';

part 'login_pin_bloc.freezed.dart';
part 'login_pin_event.dart';
part 'login_pin_state.dart';

@injectable
class LoginPinBloc extends Bloc<LoginPinEvent, LoginPinState> {
  final LoginPinRepo _loginPinRepo;
  LoginPinBloc(this._loginPinRepo) : super(LoginPinState.initial()) {
    on<LoginPinEvent>((event, emit) async {
      await event.map(
        pinchange: (e) {
          emit(state.copyWith(
            loginPin: LoginPin(e.pin),
            pinFailureOrSuccess: none(),
          ));
        },
        checkIsPinFound: (e) async {
          emit(state.copyWith(
            isLoading: true,
            pinFailureOrSuccess: none(),
          ));

          final failureaOrSuccess = await _loginPinRepo.isPinFound();
          emit(state.copyWith(
            isLoading: false,
            isPinFound: failureaOrSuccess,
          ));
        },
        createPin: (e) async {
          await _performActionOnPinLoginRepo(
              event, emit, _loginPinRepo.createPin);
        },
        validatePin: (e) async {
          await _performActionOnPinLoginRepo(
            event,
            emit,
            _loginPinRepo.validatePin,
          );
        },
        deletePin: (value) async {
          await _loginPinRepo.deletePin();
        },
      );
    });
  }

  Future<void> _performActionOnPinLoginRepo(
    LoginPinEvent event,
    Emitter<LoginPinState> emit,
    Future<Either<LoginPinFalure, Unit>> Function({
      required LoginPin loginPin,
    }) forwardedCall,
  ) async {
    final bool isPinValid = state.loginPin.isValid();
    Either<LoginPinFalure, Unit>? failureOrSuccess;

    if (isPinValid) {
      emit(state.copyWith(
        isLoading: true,
        pinFailureOrSuccess: none(),
      ));
      failureOrSuccess = await forwardedCall(loginPin: state.loginPin);
      log(failureOrSuccess.toString());

      emit(
        state.copyWith(
            isLoading: false,
            showErrorMessage: true,
            pinFailureOrSuccess: optionOf(failureOrSuccess)),
      );
    }
    emit(state.copyWith(
      isLoading: false,
      pinFailureOrSuccess: optionOf(failureOrSuccess),
    ));
  }
}
