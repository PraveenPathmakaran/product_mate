// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_pin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginPinEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) pinchange,
    required TResult Function() checkIsPinFound,
    required TResult Function() createPin,
    required TResult Function() validatePin,
    required TResult Function() deletePin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? pinchange,
    TResult? Function()? checkIsPinFound,
    TResult? Function()? createPin,
    TResult? Function()? validatePin,
    TResult? Function()? deletePin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? pinchange,
    TResult Function()? checkIsPinFound,
    TResult Function()? createPin,
    TResult Function()? validatePin,
    TResult Function()? deletePin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PinchangePressed value) pinchange,
    required TResult Function(_CheckIsPinFound value) checkIsPinFound,
    required TResult Function(_CreatePin value) createPin,
    required TResult Function(_ValidatePin value) validatePin,
    required TResult Function(_DeletePin value) deletePin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PinchangePressed value)? pinchange,
    TResult? Function(_CheckIsPinFound value)? checkIsPinFound,
    TResult? Function(_CreatePin value)? createPin,
    TResult? Function(_ValidatePin value)? validatePin,
    TResult? Function(_DeletePin value)? deletePin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PinchangePressed value)? pinchange,
    TResult Function(_CheckIsPinFound value)? checkIsPinFound,
    TResult Function(_CreatePin value)? createPin,
    TResult Function(_ValidatePin value)? validatePin,
    TResult Function(_DeletePin value)? deletePin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPinEventCopyWith<$Res> {
  factory $LoginPinEventCopyWith(
          LoginPinEvent value, $Res Function(LoginPinEvent) then) =
      _$LoginPinEventCopyWithImpl<$Res, LoginPinEvent>;
}

/// @nodoc
class _$LoginPinEventCopyWithImpl<$Res, $Val extends LoginPinEvent>
    implements $LoginPinEventCopyWith<$Res> {
  _$LoginPinEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PinchangePressedImplCopyWith<$Res> {
  factory _$$PinchangePressedImplCopyWith(_$PinchangePressedImpl value,
          $Res Function(_$PinchangePressedImpl) then) =
      __$$PinchangePressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$PinchangePressedImplCopyWithImpl<$Res>
    extends _$LoginPinEventCopyWithImpl<$Res, _$PinchangePressedImpl>
    implements _$$PinchangePressedImplCopyWith<$Res> {
  __$$PinchangePressedImplCopyWithImpl(_$PinchangePressedImpl _value,
      $Res Function(_$PinchangePressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$PinchangePressedImpl(
      null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PinchangePressedImpl implements _PinchangePressed {
  const _$PinchangePressedImpl(this.pin);

  @override
  final String pin;

  @override
  String toString() {
    return 'LoginPinEvent.pinchange(pin: $pin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PinchangePressedImpl &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PinchangePressedImplCopyWith<_$PinchangePressedImpl> get copyWith =>
      __$$PinchangePressedImplCopyWithImpl<_$PinchangePressedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) pinchange,
    required TResult Function() checkIsPinFound,
    required TResult Function() createPin,
    required TResult Function() validatePin,
    required TResult Function() deletePin,
  }) {
    return pinchange(pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? pinchange,
    TResult? Function()? checkIsPinFound,
    TResult? Function()? createPin,
    TResult? Function()? validatePin,
    TResult? Function()? deletePin,
  }) {
    return pinchange?.call(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? pinchange,
    TResult Function()? checkIsPinFound,
    TResult Function()? createPin,
    TResult Function()? validatePin,
    TResult Function()? deletePin,
    required TResult orElse(),
  }) {
    if (pinchange != null) {
      return pinchange(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PinchangePressed value) pinchange,
    required TResult Function(_CheckIsPinFound value) checkIsPinFound,
    required TResult Function(_CreatePin value) createPin,
    required TResult Function(_ValidatePin value) validatePin,
    required TResult Function(_DeletePin value) deletePin,
  }) {
    return pinchange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PinchangePressed value)? pinchange,
    TResult? Function(_CheckIsPinFound value)? checkIsPinFound,
    TResult? Function(_CreatePin value)? createPin,
    TResult? Function(_ValidatePin value)? validatePin,
    TResult? Function(_DeletePin value)? deletePin,
  }) {
    return pinchange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PinchangePressed value)? pinchange,
    TResult Function(_CheckIsPinFound value)? checkIsPinFound,
    TResult Function(_CreatePin value)? createPin,
    TResult Function(_ValidatePin value)? validatePin,
    TResult Function(_DeletePin value)? deletePin,
    required TResult orElse(),
  }) {
    if (pinchange != null) {
      return pinchange(this);
    }
    return orElse();
  }
}

abstract class _PinchangePressed implements LoginPinEvent {
  const factory _PinchangePressed(final String pin) = _$PinchangePressedImpl;

  String get pin;
  @JsonKey(ignore: true)
  _$$PinchangePressedImplCopyWith<_$PinchangePressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckIsPinFoundImplCopyWith<$Res> {
  factory _$$CheckIsPinFoundImplCopyWith(_$CheckIsPinFoundImpl value,
          $Res Function(_$CheckIsPinFoundImpl) then) =
      __$$CheckIsPinFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckIsPinFoundImplCopyWithImpl<$Res>
    extends _$LoginPinEventCopyWithImpl<$Res, _$CheckIsPinFoundImpl>
    implements _$$CheckIsPinFoundImplCopyWith<$Res> {
  __$$CheckIsPinFoundImplCopyWithImpl(
      _$CheckIsPinFoundImpl _value, $Res Function(_$CheckIsPinFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckIsPinFoundImpl implements _CheckIsPinFound {
  const _$CheckIsPinFoundImpl();

  @override
  String toString() {
    return 'LoginPinEvent.checkIsPinFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckIsPinFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) pinchange,
    required TResult Function() checkIsPinFound,
    required TResult Function() createPin,
    required TResult Function() validatePin,
    required TResult Function() deletePin,
  }) {
    return checkIsPinFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? pinchange,
    TResult? Function()? checkIsPinFound,
    TResult? Function()? createPin,
    TResult? Function()? validatePin,
    TResult? Function()? deletePin,
  }) {
    return checkIsPinFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? pinchange,
    TResult Function()? checkIsPinFound,
    TResult Function()? createPin,
    TResult Function()? validatePin,
    TResult Function()? deletePin,
    required TResult orElse(),
  }) {
    if (checkIsPinFound != null) {
      return checkIsPinFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PinchangePressed value) pinchange,
    required TResult Function(_CheckIsPinFound value) checkIsPinFound,
    required TResult Function(_CreatePin value) createPin,
    required TResult Function(_ValidatePin value) validatePin,
    required TResult Function(_DeletePin value) deletePin,
  }) {
    return checkIsPinFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PinchangePressed value)? pinchange,
    TResult? Function(_CheckIsPinFound value)? checkIsPinFound,
    TResult? Function(_CreatePin value)? createPin,
    TResult? Function(_ValidatePin value)? validatePin,
    TResult? Function(_DeletePin value)? deletePin,
  }) {
    return checkIsPinFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PinchangePressed value)? pinchange,
    TResult Function(_CheckIsPinFound value)? checkIsPinFound,
    TResult Function(_CreatePin value)? createPin,
    TResult Function(_ValidatePin value)? validatePin,
    TResult Function(_DeletePin value)? deletePin,
    required TResult orElse(),
  }) {
    if (checkIsPinFound != null) {
      return checkIsPinFound(this);
    }
    return orElse();
  }
}

abstract class _CheckIsPinFound implements LoginPinEvent {
  const factory _CheckIsPinFound() = _$CheckIsPinFoundImpl;
}

/// @nodoc
abstract class _$$CreatePinImplCopyWith<$Res> {
  factory _$$CreatePinImplCopyWith(
          _$CreatePinImpl value, $Res Function(_$CreatePinImpl) then) =
      __$$CreatePinImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatePinImplCopyWithImpl<$Res>
    extends _$LoginPinEventCopyWithImpl<$Res, _$CreatePinImpl>
    implements _$$CreatePinImplCopyWith<$Res> {
  __$$CreatePinImplCopyWithImpl(
      _$CreatePinImpl _value, $Res Function(_$CreatePinImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreatePinImpl implements _CreatePin {
  const _$CreatePinImpl();

  @override
  String toString() {
    return 'LoginPinEvent.createPin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreatePinImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) pinchange,
    required TResult Function() checkIsPinFound,
    required TResult Function() createPin,
    required TResult Function() validatePin,
    required TResult Function() deletePin,
  }) {
    return createPin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? pinchange,
    TResult? Function()? checkIsPinFound,
    TResult? Function()? createPin,
    TResult? Function()? validatePin,
    TResult? Function()? deletePin,
  }) {
    return createPin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? pinchange,
    TResult Function()? checkIsPinFound,
    TResult Function()? createPin,
    TResult Function()? validatePin,
    TResult Function()? deletePin,
    required TResult orElse(),
  }) {
    if (createPin != null) {
      return createPin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PinchangePressed value) pinchange,
    required TResult Function(_CheckIsPinFound value) checkIsPinFound,
    required TResult Function(_CreatePin value) createPin,
    required TResult Function(_ValidatePin value) validatePin,
    required TResult Function(_DeletePin value) deletePin,
  }) {
    return createPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PinchangePressed value)? pinchange,
    TResult? Function(_CheckIsPinFound value)? checkIsPinFound,
    TResult? Function(_CreatePin value)? createPin,
    TResult? Function(_ValidatePin value)? validatePin,
    TResult? Function(_DeletePin value)? deletePin,
  }) {
    return createPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PinchangePressed value)? pinchange,
    TResult Function(_CheckIsPinFound value)? checkIsPinFound,
    TResult Function(_CreatePin value)? createPin,
    TResult Function(_ValidatePin value)? validatePin,
    TResult Function(_DeletePin value)? deletePin,
    required TResult orElse(),
  }) {
    if (createPin != null) {
      return createPin(this);
    }
    return orElse();
  }
}

abstract class _CreatePin implements LoginPinEvent {
  const factory _CreatePin() = _$CreatePinImpl;
}

/// @nodoc
abstract class _$$ValidatePinImplCopyWith<$Res> {
  factory _$$ValidatePinImplCopyWith(
          _$ValidatePinImpl value, $Res Function(_$ValidatePinImpl) then) =
      __$$ValidatePinImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidatePinImplCopyWithImpl<$Res>
    extends _$LoginPinEventCopyWithImpl<$Res, _$ValidatePinImpl>
    implements _$$ValidatePinImplCopyWith<$Res> {
  __$$ValidatePinImplCopyWithImpl(
      _$ValidatePinImpl _value, $Res Function(_$ValidatePinImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValidatePinImpl implements _ValidatePin {
  const _$ValidatePinImpl();

  @override
  String toString() {
    return 'LoginPinEvent.validatePin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidatePinImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) pinchange,
    required TResult Function() checkIsPinFound,
    required TResult Function() createPin,
    required TResult Function() validatePin,
    required TResult Function() deletePin,
  }) {
    return validatePin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? pinchange,
    TResult? Function()? checkIsPinFound,
    TResult? Function()? createPin,
    TResult? Function()? validatePin,
    TResult? Function()? deletePin,
  }) {
    return validatePin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? pinchange,
    TResult Function()? checkIsPinFound,
    TResult Function()? createPin,
    TResult Function()? validatePin,
    TResult Function()? deletePin,
    required TResult orElse(),
  }) {
    if (validatePin != null) {
      return validatePin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PinchangePressed value) pinchange,
    required TResult Function(_CheckIsPinFound value) checkIsPinFound,
    required TResult Function(_CreatePin value) createPin,
    required TResult Function(_ValidatePin value) validatePin,
    required TResult Function(_DeletePin value) deletePin,
  }) {
    return validatePin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PinchangePressed value)? pinchange,
    TResult? Function(_CheckIsPinFound value)? checkIsPinFound,
    TResult? Function(_CreatePin value)? createPin,
    TResult? Function(_ValidatePin value)? validatePin,
    TResult? Function(_DeletePin value)? deletePin,
  }) {
    return validatePin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PinchangePressed value)? pinchange,
    TResult Function(_CheckIsPinFound value)? checkIsPinFound,
    TResult Function(_CreatePin value)? createPin,
    TResult Function(_ValidatePin value)? validatePin,
    TResult Function(_DeletePin value)? deletePin,
    required TResult orElse(),
  }) {
    if (validatePin != null) {
      return validatePin(this);
    }
    return orElse();
  }
}

abstract class _ValidatePin implements LoginPinEvent {
  const factory _ValidatePin() = _$ValidatePinImpl;
}

/// @nodoc
abstract class _$$DeletePinImplCopyWith<$Res> {
  factory _$$DeletePinImplCopyWith(
          _$DeletePinImpl value, $Res Function(_$DeletePinImpl) then) =
      __$$DeletePinImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletePinImplCopyWithImpl<$Res>
    extends _$LoginPinEventCopyWithImpl<$Res, _$DeletePinImpl>
    implements _$$DeletePinImplCopyWith<$Res> {
  __$$DeletePinImplCopyWithImpl(
      _$DeletePinImpl _value, $Res Function(_$DeletePinImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeletePinImpl implements _DeletePin {
  const _$DeletePinImpl();

  @override
  String toString() {
    return 'LoginPinEvent.deletePin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletePinImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) pinchange,
    required TResult Function() checkIsPinFound,
    required TResult Function() createPin,
    required TResult Function() validatePin,
    required TResult Function() deletePin,
  }) {
    return deletePin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? pinchange,
    TResult? Function()? checkIsPinFound,
    TResult? Function()? createPin,
    TResult? Function()? validatePin,
    TResult? Function()? deletePin,
  }) {
    return deletePin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? pinchange,
    TResult Function()? checkIsPinFound,
    TResult Function()? createPin,
    TResult Function()? validatePin,
    TResult Function()? deletePin,
    required TResult orElse(),
  }) {
    if (deletePin != null) {
      return deletePin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PinchangePressed value) pinchange,
    required TResult Function(_CheckIsPinFound value) checkIsPinFound,
    required TResult Function(_CreatePin value) createPin,
    required TResult Function(_ValidatePin value) validatePin,
    required TResult Function(_DeletePin value) deletePin,
  }) {
    return deletePin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PinchangePressed value)? pinchange,
    TResult? Function(_CheckIsPinFound value)? checkIsPinFound,
    TResult? Function(_CreatePin value)? createPin,
    TResult? Function(_ValidatePin value)? validatePin,
    TResult? Function(_DeletePin value)? deletePin,
  }) {
    return deletePin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PinchangePressed value)? pinchange,
    TResult Function(_CheckIsPinFound value)? checkIsPinFound,
    TResult Function(_CreatePin value)? createPin,
    TResult Function(_ValidatePin value)? validatePin,
    TResult Function(_DeletePin value)? deletePin,
    required TResult orElse(),
  }) {
    if (deletePin != null) {
      return deletePin(this);
    }
    return orElse();
  }
}

abstract class _DeletePin implements LoginPinEvent {
  const factory _DeletePin() = _$DeletePinImpl;
}

/// @nodoc
mixin _$LoginPinState {
  LoginPin get loginPin => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  Option<bool> get isPinFound => throw _privateConstructorUsedError;
  Option<Either<LoginPinFalure, Unit>> get pinFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginPinStateCopyWith<LoginPinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPinStateCopyWith<$Res> {
  factory $LoginPinStateCopyWith(
          LoginPinState value, $Res Function(LoginPinState) then) =
      _$LoginPinStateCopyWithImpl<$Res, LoginPinState>;
  @useResult
  $Res call(
      {LoginPin loginPin,
      bool isLoading,
      bool showErrorMessage,
      Option<bool> isPinFound,
      Option<Either<LoginPinFalure, Unit>> pinFailureOrSuccess});
}

/// @nodoc
class _$LoginPinStateCopyWithImpl<$Res, $Val extends LoginPinState>
    implements $LoginPinStateCopyWith<$Res> {
  _$LoginPinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginPin = null,
    Object? isLoading = null,
    Object? showErrorMessage = null,
    Object? isPinFound = null,
    Object? pinFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      loginPin: null == loginPin
          ? _value.loginPin
          : loginPin // ignore: cast_nullable_to_non_nullable
              as LoginPin,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isPinFound: null == isPinFound
          ? _value.isPinFound
          : isPinFound // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      pinFailureOrSuccess: null == pinFailureOrSuccess
          ? _value.pinFailureOrSuccess
          : pinFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LoginPinFalure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PinLoginStateImplCopyWith<$Res>
    implements $LoginPinStateCopyWith<$Res> {
  factory _$$PinLoginStateImplCopyWith(
          _$PinLoginStateImpl value, $Res Function(_$PinLoginStateImpl) then) =
      __$$PinLoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoginPin loginPin,
      bool isLoading,
      bool showErrorMessage,
      Option<bool> isPinFound,
      Option<Either<LoginPinFalure, Unit>> pinFailureOrSuccess});
}

/// @nodoc
class __$$PinLoginStateImplCopyWithImpl<$Res>
    extends _$LoginPinStateCopyWithImpl<$Res, _$PinLoginStateImpl>
    implements _$$PinLoginStateImplCopyWith<$Res> {
  __$$PinLoginStateImplCopyWithImpl(
      _$PinLoginStateImpl _value, $Res Function(_$PinLoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginPin = null,
    Object? isLoading = null,
    Object? showErrorMessage = null,
    Object? isPinFound = null,
    Object? pinFailureOrSuccess = null,
  }) {
    return _then(_$PinLoginStateImpl(
      loginPin: null == loginPin
          ? _value.loginPin
          : loginPin // ignore: cast_nullable_to_non_nullable
              as LoginPin,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isPinFound: null == isPinFound
          ? _value.isPinFound
          : isPinFound // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      pinFailureOrSuccess: null == pinFailureOrSuccess
          ? _value.pinFailureOrSuccess
          : pinFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LoginPinFalure, Unit>>,
    ));
  }
}

/// @nodoc

class _$PinLoginStateImpl implements _PinLoginState {
  const _$PinLoginStateImpl(
      {required this.loginPin,
      required this.isLoading,
      required this.showErrorMessage,
      required this.isPinFound,
      required this.pinFailureOrSuccess});

  @override
  final LoginPin loginPin;
  @override
  final bool isLoading;
  @override
  final bool showErrorMessage;
  @override
  final Option<bool> isPinFound;
  @override
  final Option<Either<LoginPinFalure, Unit>> pinFailureOrSuccess;

  @override
  String toString() {
    return 'LoginPinState(loginPin: $loginPin, isLoading: $isLoading, showErrorMessage: $showErrorMessage, isPinFound: $isPinFound, pinFailureOrSuccess: $pinFailureOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PinLoginStateImpl &&
            (identical(other.loginPin, loginPin) ||
                other.loginPin == loginPin) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.isPinFound, isPinFound) ||
                other.isPinFound == isPinFound) &&
            (identical(other.pinFailureOrSuccess, pinFailureOrSuccess) ||
                other.pinFailureOrSuccess == pinFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginPin, isLoading,
      showErrorMessage, isPinFound, pinFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PinLoginStateImplCopyWith<_$PinLoginStateImpl> get copyWith =>
      __$$PinLoginStateImplCopyWithImpl<_$PinLoginStateImpl>(this, _$identity);
}

abstract class _PinLoginState implements LoginPinState {
  const factory _PinLoginState(
      {required final LoginPin loginPin,
      required final bool isLoading,
      required final bool showErrorMessage,
      required final Option<bool> isPinFound,
      required final Option<Either<LoginPinFalure, Unit>>
          pinFailureOrSuccess}) = _$PinLoginStateImpl;

  @override
  LoginPin get loginPin;
  @override
  bool get isLoading;
  @override
  bool get showErrorMessage;
  @override
  Option<bool> get isPinFound;
  @override
  Option<Either<LoginPinFalure, Unit>> get pinFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$PinLoginStateImplCopyWith<_$PinLoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
