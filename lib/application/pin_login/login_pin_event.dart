part of 'login_pin_bloc.dart';

@freezed
class LoginPinEvent with _$LoginPinEvent {
  const factory LoginPinEvent.pinchange(String pin) = _PinchangePressed;
  const factory LoginPinEvent.checkIsPinFound() = _CheckIsPinFound;
  const factory LoginPinEvent.createPin() = _CreatePin;
  const factory LoginPinEvent.validatePin() = _ValidatePin;
  const factory LoginPinEvent.deletePin() = _DeletePin;
}
