// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFailure<T> {
  Object get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidPin,
    required TResult Function(String failedValue) emptyString,
    required TResult Function(num failedValue) invalidNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(String failedValue)? invalidPin,
    TResult? Function(String failedValue)? emptyString,
    TResult? Function(num failedValue)? invalidNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidPin,
    TResult Function(String failedValue)? emptyString,
    TResult Function(num failedValue)? invalidNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_InvalidPin<T> value) invalidPin,
    required TResult Function(_EmptyString<T> value) emptyString,
    required TResult Function(_InvalidPrice<T> value) invalidNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_ShortPassword<T> value)? shortPassword,
    TResult? Function(_InvalidPin<T> value)? invalidPin,
    TResult? Function(_EmptyString<T> value)? emptyString,
    TResult? Function(_InvalidPrice<T> value)? invalidNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidPin<T> value)? invalidPin,
    TResult Function(_EmptyString<T> value)? emptyString,
    TResult Function(_InvalidPrice<T> value)? invalidNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InvalidEmailImplCopyWith<T, $Res> {
  factory _$$InvalidEmailImplCopyWith(_$InvalidEmailImpl<T> value,
          $Res Function(_$InvalidEmailImpl<T>) then) =
      __$$InvalidEmailImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$InvalidEmailImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidEmailImpl<T>>
    implements _$$InvalidEmailImplCopyWith<T, $Res> {
  __$$InvalidEmailImplCopyWithImpl(
      _$InvalidEmailImpl<T> _value, $Res Function(_$InvalidEmailImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$InvalidEmailImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmailImpl<T> implements _InvalidEmail<T> {
  const _$InvalidEmailImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      __$$InvalidEmailImplCopyWithImpl<T, _$InvalidEmailImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidPin,
    required TResult Function(String failedValue) emptyString,
    required TResult Function(num failedValue) invalidNumber,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(String failedValue)? invalidPin,
    TResult? Function(String failedValue)? emptyString,
    TResult? Function(num failedValue)? invalidNumber,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidPin,
    TResult Function(String failedValue)? emptyString,
    TResult Function(num failedValue)? invalidNumber,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_InvalidPin<T> value) invalidPin,
    required TResult Function(_EmptyString<T> value) emptyString,
    required TResult Function(_InvalidPrice<T> value) invalidNumber,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_ShortPassword<T> value)? shortPassword,
    TResult? Function(_InvalidPin<T> value)? invalidPin,
    TResult? Function(_EmptyString<T> value)? emptyString,
    TResult? Function(_InvalidPrice<T> value)? invalidNumber,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidPin<T> value)? invalidPin,
    TResult Function(_EmptyString<T> value)? emptyString,
    TResult Function(_InvalidPrice<T> value)? invalidNumber,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail<T> implements ValueFailure<T> {
  const factory _InvalidEmail({required final String failedValue}) =
      _$InvalidEmailImpl<T>;

  @override
  String get failedValue;
  @JsonKey(ignore: true)
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortPasswordImplCopyWith<T, $Res> {
  factory _$$ShortPasswordImplCopyWith(_$ShortPasswordImpl<T> value,
          $Res Function(_$ShortPasswordImpl<T>) then) =
      __$$ShortPasswordImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$ShortPasswordImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortPasswordImpl<T>>
    implements _$$ShortPasswordImplCopyWith<T, $Res> {
  __$$ShortPasswordImplCopyWithImpl(_$ShortPasswordImpl<T> _value,
      $Res Function(_$ShortPasswordImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$ShortPasswordImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShortPasswordImpl<T> implements _ShortPassword<T> {
  const _$ShortPasswordImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPasswordImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortPasswordImplCopyWith<T, _$ShortPasswordImpl<T>> get copyWith =>
      __$$ShortPasswordImplCopyWithImpl<T, _$ShortPasswordImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidPin,
    required TResult Function(String failedValue) emptyString,
    required TResult Function(num failedValue) invalidNumber,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(String failedValue)? invalidPin,
    TResult? Function(String failedValue)? emptyString,
    TResult? Function(num failedValue)? invalidNumber,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidPin,
    TResult Function(String failedValue)? emptyString,
    TResult Function(num failedValue)? invalidNumber,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_InvalidPin<T> value) invalidPin,
    required TResult Function(_EmptyString<T> value) emptyString,
    required TResult Function(_InvalidPrice<T> value) invalidNumber,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_ShortPassword<T> value)? shortPassword,
    TResult? Function(_InvalidPin<T> value)? invalidPin,
    TResult? Function(_EmptyString<T> value)? emptyString,
    TResult? Function(_InvalidPrice<T> value)? invalidNumber,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidPin<T> value)? invalidPin,
    TResult Function(_EmptyString<T> value)? emptyString,
    TResult Function(_InvalidPrice<T> value)? invalidNumber,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class _ShortPassword<T> implements ValueFailure<T> {
  const factory _ShortPassword({required final String failedValue}) =
      _$ShortPasswordImpl<T>;

  @override
  String get failedValue;
  @JsonKey(ignore: true)
  _$$ShortPasswordImplCopyWith<T, _$ShortPasswordImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidPinImplCopyWith<T, $Res> {
  factory _$$InvalidPinImplCopyWith(
          _$InvalidPinImpl<T> value, $Res Function(_$InvalidPinImpl<T>) then) =
      __$$InvalidPinImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$InvalidPinImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidPinImpl<T>>
    implements _$$InvalidPinImplCopyWith<T, $Res> {
  __$$InvalidPinImplCopyWithImpl(
      _$InvalidPinImpl<T> _value, $Res Function(_$InvalidPinImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$InvalidPinImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidPinImpl<T> implements _InvalidPin<T> {
  const _$InvalidPinImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPin(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidPinImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidPinImplCopyWith<T, _$InvalidPinImpl<T>> get copyWith =>
      __$$InvalidPinImplCopyWithImpl<T, _$InvalidPinImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidPin,
    required TResult Function(String failedValue) emptyString,
    required TResult Function(num failedValue) invalidNumber,
  }) {
    return invalidPin(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(String failedValue)? invalidPin,
    TResult? Function(String failedValue)? emptyString,
    TResult? Function(num failedValue)? invalidNumber,
  }) {
    return invalidPin?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidPin,
    TResult Function(String failedValue)? emptyString,
    TResult Function(num failedValue)? invalidNumber,
    required TResult orElse(),
  }) {
    if (invalidPin != null) {
      return invalidPin(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_InvalidPin<T> value) invalidPin,
    required TResult Function(_EmptyString<T> value) emptyString,
    required TResult Function(_InvalidPrice<T> value) invalidNumber,
  }) {
    return invalidPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_ShortPassword<T> value)? shortPassword,
    TResult? Function(_InvalidPin<T> value)? invalidPin,
    TResult? Function(_EmptyString<T> value)? emptyString,
    TResult? Function(_InvalidPrice<T> value)? invalidNumber,
  }) {
    return invalidPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidPin<T> value)? invalidPin,
    TResult Function(_EmptyString<T> value)? emptyString,
    TResult Function(_InvalidPrice<T> value)? invalidNumber,
    required TResult orElse(),
  }) {
    if (invalidPin != null) {
      return invalidPin(this);
    }
    return orElse();
  }
}

abstract class _InvalidPin<T> implements ValueFailure<T> {
  const factory _InvalidPin({required final String failedValue}) =
      _$InvalidPinImpl<T>;

  @override
  String get failedValue;
  @JsonKey(ignore: true)
  _$$InvalidPinImplCopyWith<T, _$InvalidPinImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyStringImplCopyWith<T, $Res> {
  factory _$$EmptyStringImplCopyWith(_$EmptyStringImpl<T> value,
          $Res Function(_$EmptyStringImpl<T>) then) =
      __$$EmptyStringImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$EmptyStringImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EmptyStringImpl<T>>
    implements _$$EmptyStringImplCopyWith<T, $Res> {
  __$$EmptyStringImplCopyWithImpl(
      _$EmptyStringImpl<T> _value, $Res Function(_$EmptyStringImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$EmptyStringImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmptyStringImpl<T> implements _EmptyString<T> {
  const _$EmptyStringImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyString(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyStringImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyStringImplCopyWith<T, _$EmptyStringImpl<T>> get copyWith =>
      __$$EmptyStringImplCopyWithImpl<T, _$EmptyStringImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidPin,
    required TResult Function(String failedValue) emptyString,
    required TResult Function(num failedValue) invalidNumber,
  }) {
    return emptyString(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(String failedValue)? invalidPin,
    TResult? Function(String failedValue)? emptyString,
    TResult? Function(num failedValue)? invalidNumber,
  }) {
    return emptyString?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidPin,
    TResult Function(String failedValue)? emptyString,
    TResult Function(num failedValue)? invalidNumber,
    required TResult orElse(),
  }) {
    if (emptyString != null) {
      return emptyString(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_InvalidPin<T> value) invalidPin,
    required TResult Function(_EmptyString<T> value) emptyString,
    required TResult Function(_InvalidPrice<T> value) invalidNumber,
  }) {
    return emptyString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_ShortPassword<T> value)? shortPassword,
    TResult? Function(_InvalidPin<T> value)? invalidPin,
    TResult? Function(_EmptyString<T> value)? emptyString,
    TResult? Function(_InvalidPrice<T> value)? invalidNumber,
  }) {
    return emptyString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidPin<T> value)? invalidPin,
    TResult Function(_EmptyString<T> value)? emptyString,
    TResult Function(_InvalidPrice<T> value)? invalidNumber,
    required TResult orElse(),
  }) {
    if (emptyString != null) {
      return emptyString(this);
    }
    return orElse();
  }
}

abstract class _EmptyString<T> implements ValueFailure<T> {
  const factory _EmptyString({required final String failedValue}) =
      _$EmptyStringImpl<T>;

  @override
  String get failedValue;
  @JsonKey(ignore: true)
  _$$EmptyStringImplCopyWith<T, _$EmptyStringImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidPriceImplCopyWith<T, $Res> {
  factory _$$InvalidPriceImplCopyWith(_$InvalidPriceImpl<T> value,
          $Res Function(_$InvalidPriceImpl<T>) then) =
      __$$InvalidPriceImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({num failedValue});
}

/// @nodoc
class __$$InvalidPriceImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidPriceImpl<T>>
    implements _$$InvalidPriceImplCopyWith<T, $Res> {
  __$$InvalidPriceImplCopyWithImpl(
      _$InvalidPriceImpl<T> _value, $Res Function(_$InvalidPriceImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$InvalidPriceImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$InvalidPriceImpl<T> implements _InvalidPrice<T> {
  const _$InvalidPriceImpl({required this.failedValue});

  @override
  final num failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidPriceImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidPriceImplCopyWith<T, _$InvalidPriceImpl<T>> get copyWith =>
      __$$InvalidPriceImplCopyWithImpl<T, _$InvalidPriceImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidPin,
    required TResult Function(String failedValue) emptyString,
    required TResult Function(num failedValue) invalidNumber,
  }) {
    return invalidNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(String failedValue)? invalidPin,
    TResult? Function(String failedValue)? emptyString,
    TResult? Function(num failedValue)? invalidNumber,
  }) {
    return invalidNumber?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidPin,
    TResult Function(String failedValue)? emptyString,
    TResult Function(num failedValue)? invalidNumber,
    required TResult orElse(),
  }) {
    if (invalidNumber != null) {
      return invalidNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_InvalidPin<T> value) invalidPin,
    required TResult Function(_EmptyString<T> value) emptyString,
    required TResult Function(_InvalidPrice<T> value) invalidNumber,
  }) {
    return invalidNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_ShortPassword<T> value)? shortPassword,
    TResult? Function(_InvalidPin<T> value)? invalidPin,
    TResult? Function(_EmptyString<T> value)? emptyString,
    TResult? Function(_InvalidPrice<T> value)? invalidNumber,
  }) {
    return invalidNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidPin<T> value)? invalidPin,
    TResult Function(_EmptyString<T> value)? emptyString,
    TResult Function(_InvalidPrice<T> value)? invalidNumber,
    required TResult orElse(),
  }) {
    if (invalidNumber != null) {
      return invalidNumber(this);
    }
    return orElse();
  }
}

abstract class _InvalidPrice<T> implements ValueFailure<T> {
  const factory _InvalidPrice({required final num failedValue}) =
      _$InvalidPriceImpl<T>;

  @override
  num get failedValue;
  @JsonKey(ignore: true)
  _$$InvalidPriceImplCopyWith<T, _$InvalidPriceImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
