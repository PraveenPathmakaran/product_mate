import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_failure.freezed.dart';

@freezed
class LoginPinFalure with _$LoginPinFalure {
  const factory LoginPinFalure.incorrectPin() = _IncorrectPin;
  const factory LoginPinFalure.platFormFailure() = _PlatFormFailure;
  const factory LoginPinFalure.pinNotFoundFailure() = _PinNotFoundFailure;
}
