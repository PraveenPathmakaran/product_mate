// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String priceStr) priceChanged,
    required TResult Function(String heightStr) heightChanged,
    required TResult Function(String widhtStr) widthChanged,
    required TResult Function(String lengthStr) lengthChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String priceStr)? priceChanged,
    TResult? Function(String heightStr)? heightChanged,
    TResult? Function(String widhtStr)? widthChanged,
    TResult? Function(String lengthStr)? lengthChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String priceStr)? priceChanged,
    TResult Function(String heightStr)? heightChanged,
    TResult Function(String widhtStr)? widthChanged,
    TResult Function(String lengthStr)? lengthChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_HeightChanged value) heightChanged,
    required TResult Function(_WidthChanged value) widthChanged,
    required TResult Function(_LengthChanged value) lengthChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PriceChanged value)? priceChanged,
    TResult? Function(_HeightChanged value)? heightChanged,
    TResult? Function(_WidthChanged value)? widthChanged,
    TResult? Function(_LengthChanged value)? lengthChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_HeightChanged value)? heightChanged,
    TResult Function(_WidthChanged value)? widthChanged,
    TResult Function(_LengthChanged value)? lengthChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFormEventCopyWith<$Res> {
  factory $ProductFormEventCopyWith(
          ProductFormEvent value, $Res Function(ProductFormEvent) then) =
      _$ProductFormEventCopyWithImpl<$Res, ProductFormEvent>;
}

/// @nodoc
class _$ProductFormEventCopyWithImpl<$Res, $Val extends ProductFormEvent>
    implements $ProductFormEventCopyWith<$Res> {
  _$ProductFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameStr});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameStr = null,
  }) {
    return _then(_$NameChangedImpl(
      null == nameStr
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'ProductFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.nameStr, nameStr) || other.nameStr == nameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String priceStr) priceChanged,
    required TResult Function(String heightStr) heightChanged,
    required TResult Function(String widhtStr) widthChanged,
    required TResult Function(String lengthStr) lengthChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String priceStr)? priceChanged,
    TResult? Function(String heightStr)? heightChanged,
    TResult? Function(String widhtStr)? widthChanged,
    TResult? Function(String lengthStr)? lengthChanged,
    TResult? Function()? saved,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String priceStr)? priceChanged,
    TResult Function(String heightStr)? heightChanged,
    TResult Function(String widhtStr)? widthChanged,
    TResult Function(String lengthStr)? lengthChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_HeightChanged value) heightChanged,
    required TResult Function(_WidthChanged value) widthChanged,
    required TResult Function(_LengthChanged value) lengthChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PriceChanged value)? priceChanged,
    TResult? Function(_HeightChanged value)? heightChanged,
    TResult? Function(_WidthChanged value)? widthChanged,
    TResult? Function(_LengthChanged value)? lengthChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_HeightChanged value)? heightChanged,
    TResult Function(_WidthChanged value)? widthChanged,
    TResult Function(_LengthChanged value)? lengthChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements ProductFormEvent {
  const factory _NameChanged(final String nameStr) = _$NameChangedImpl;

  String get nameStr;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PriceChangedImplCopyWith<$Res> {
  factory _$$PriceChangedImplCopyWith(
          _$PriceChangedImpl value, $Res Function(_$PriceChangedImpl) then) =
      __$$PriceChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String priceStr});
}

/// @nodoc
class __$$PriceChangedImplCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res, _$PriceChangedImpl>
    implements _$$PriceChangedImplCopyWith<$Res> {
  __$$PriceChangedImplCopyWithImpl(
      _$PriceChangedImpl _value, $Res Function(_$PriceChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceStr = null,
  }) {
    return _then(_$PriceChangedImpl(
      null == priceStr
          ? _value.priceStr
          : priceStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PriceChangedImpl implements _PriceChanged {
  const _$PriceChangedImpl(this.priceStr);

  @override
  final String priceStr;

  @override
  String toString() {
    return 'ProductFormEvent.priceChanged(priceStr: $priceStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceChangedImpl &&
            (identical(other.priceStr, priceStr) ||
                other.priceStr == priceStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, priceStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceChangedImplCopyWith<_$PriceChangedImpl> get copyWith =>
      __$$PriceChangedImplCopyWithImpl<_$PriceChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String priceStr) priceChanged,
    required TResult Function(String heightStr) heightChanged,
    required TResult Function(String widhtStr) widthChanged,
    required TResult Function(String lengthStr) lengthChanged,
    required TResult Function() saved,
  }) {
    return priceChanged(priceStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String priceStr)? priceChanged,
    TResult? Function(String heightStr)? heightChanged,
    TResult? Function(String widhtStr)? widthChanged,
    TResult? Function(String lengthStr)? lengthChanged,
    TResult? Function()? saved,
  }) {
    return priceChanged?.call(priceStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String priceStr)? priceChanged,
    TResult Function(String heightStr)? heightChanged,
    TResult Function(String widhtStr)? widthChanged,
    TResult Function(String lengthStr)? lengthChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (priceChanged != null) {
      return priceChanged(priceStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_HeightChanged value) heightChanged,
    required TResult Function(_WidthChanged value) widthChanged,
    required TResult Function(_LengthChanged value) lengthChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return priceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PriceChanged value)? priceChanged,
    TResult? Function(_HeightChanged value)? heightChanged,
    TResult? Function(_WidthChanged value)? widthChanged,
    TResult? Function(_LengthChanged value)? lengthChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return priceChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_HeightChanged value)? heightChanged,
    TResult Function(_WidthChanged value)? widthChanged,
    TResult Function(_LengthChanged value)? lengthChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (priceChanged != null) {
      return priceChanged(this);
    }
    return orElse();
  }
}

abstract class _PriceChanged implements ProductFormEvent {
  const factory _PriceChanged(final String priceStr) = _$PriceChangedImpl;

  String get priceStr;
  @JsonKey(ignore: true)
  _$$PriceChangedImplCopyWith<_$PriceChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HeightChangedImplCopyWith<$Res> {
  factory _$$HeightChangedImplCopyWith(
          _$HeightChangedImpl value, $Res Function(_$HeightChangedImpl) then) =
      __$$HeightChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String heightStr});
}

/// @nodoc
class __$$HeightChangedImplCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res, _$HeightChangedImpl>
    implements _$$HeightChangedImplCopyWith<$Res> {
  __$$HeightChangedImplCopyWithImpl(
      _$HeightChangedImpl _value, $Res Function(_$HeightChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heightStr = null,
  }) {
    return _then(_$HeightChangedImpl(
      null == heightStr
          ? _value.heightStr
          : heightStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HeightChangedImpl implements _HeightChanged {
  const _$HeightChangedImpl(this.heightStr);

  @override
  final String heightStr;

  @override
  String toString() {
    return 'ProductFormEvent.heightChanged(heightStr: $heightStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeightChangedImpl &&
            (identical(other.heightStr, heightStr) ||
                other.heightStr == heightStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, heightStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeightChangedImplCopyWith<_$HeightChangedImpl> get copyWith =>
      __$$HeightChangedImplCopyWithImpl<_$HeightChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String priceStr) priceChanged,
    required TResult Function(String heightStr) heightChanged,
    required TResult Function(String widhtStr) widthChanged,
    required TResult Function(String lengthStr) lengthChanged,
    required TResult Function() saved,
  }) {
    return heightChanged(heightStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String priceStr)? priceChanged,
    TResult? Function(String heightStr)? heightChanged,
    TResult? Function(String widhtStr)? widthChanged,
    TResult? Function(String lengthStr)? lengthChanged,
    TResult? Function()? saved,
  }) {
    return heightChanged?.call(heightStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String priceStr)? priceChanged,
    TResult Function(String heightStr)? heightChanged,
    TResult Function(String widhtStr)? widthChanged,
    TResult Function(String lengthStr)? lengthChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (heightChanged != null) {
      return heightChanged(heightStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_HeightChanged value) heightChanged,
    required TResult Function(_WidthChanged value) widthChanged,
    required TResult Function(_LengthChanged value) lengthChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return heightChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PriceChanged value)? priceChanged,
    TResult? Function(_HeightChanged value)? heightChanged,
    TResult? Function(_WidthChanged value)? widthChanged,
    TResult? Function(_LengthChanged value)? lengthChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return heightChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_HeightChanged value)? heightChanged,
    TResult Function(_WidthChanged value)? widthChanged,
    TResult Function(_LengthChanged value)? lengthChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (heightChanged != null) {
      return heightChanged(this);
    }
    return orElse();
  }
}

abstract class _HeightChanged implements ProductFormEvent {
  const factory _HeightChanged(final String heightStr) = _$HeightChangedImpl;

  String get heightStr;
  @JsonKey(ignore: true)
  _$$HeightChangedImplCopyWith<_$HeightChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WidthChangedImplCopyWith<$Res> {
  factory _$$WidthChangedImplCopyWith(
          _$WidthChangedImpl value, $Res Function(_$WidthChangedImpl) then) =
      __$$WidthChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String widhtStr});
}

/// @nodoc
class __$$WidthChangedImplCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res, _$WidthChangedImpl>
    implements _$$WidthChangedImplCopyWith<$Res> {
  __$$WidthChangedImplCopyWithImpl(
      _$WidthChangedImpl _value, $Res Function(_$WidthChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widhtStr = null,
  }) {
    return _then(_$WidthChangedImpl(
      null == widhtStr
          ? _value.widhtStr
          : widhtStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WidthChangedImpl implements _WidthChanged {
  const _$WidthChangedImpl(this.widhtStr);

  @override
  final String widhtStr;

  @override
  String toString() {
    return 'ProductFormEvent.widthChanged(widhtStr: $widhtStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WidthChangedImpl &&
            (identical(other.widhtStr, widhtStr) ||
                other.widhtStr == widhtStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, widhtStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WidthChangedImplCopyWith<_$WidthChangedImpl> get copyWith =>
      __$$WidthChangedImplCopyWithImpl<_$WidthChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String priceStr) priceChanged,
    required TResult Function(String heightStr) heightChanged,
    required TResult Function(String widhtStr) widthChanged,
    required TResult Function(String lengthStr) lengthChanged,
    required TResult Function() saved,
  }) {
    return widthChanged(widhtStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String priceStr)? priceChanged,
    TResult? Function(String heightStr)? heightChanged,
    TResult? Function(String widhtStr)? widthChanged,
    TResult? Function(String lengthStr)? lengthChanged,
    TResult? Function()? saved,
  }) {
    return widthChanged?.call(widhtStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String priceStr)? priceChanged,
    TResult Function(String heightStr)? heightChanged,
    TResult Function(String widhtStr)? widthChanged,
    TResult Function(String lengthStr)? lengthChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (widthChanged != null) {
      return widthChanged(widhtStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_HeightChanged value) heightChanged,
    required TResult Function(_WidthChanged value) widthChanged,
    required TResult Function(_LengthChanged value) lengthChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return widthChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PriceChanged value)? priceChanged,
    TResult? Function(_HeightChanged value)? heightChanged,
    TResult? Function(_WidthChanged value)? widthChanged,
    TResult? Function(_LengthChanged value)? lengthChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return widthChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_HeightChanged value)? heightChanged,
    TResult Function(_WidthChanged value)? widthChanged,
    TResult Function(_LengthChanged value)? lengthChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (widthChanged != null) {
      return widthChanged(this);
    }
    return orElse();
  }
}

abstract class _WidthChanged implements ProductFormEvent {
  const factory _WidthChanged(final String widhtStr) = _$WidthChangedImpl;

  String get widhtStr;
  @JsonKey(ignore: true)
  _$$WidthChangedImplCopyWith<_$WidthChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LengthChangedImplCopyWith<$Res> {
  factory _$$LengthChangedImplCopyWith(
          _$LengthChangedImpl value, $Res Function(_$LengthChangedImpl) then) =
      __$$LengthChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lengthStr});
}

/// @nodoc
class __$$LengthChangedImplCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res, _$LengthChangedImpl>
    implements _$$LengthChangedImplCopyWith<$Res> {
  __$$LengthChangedImplCopyWithImpl(
      _$LengthChangedImpl _value, $Res Function(_$LengthChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lengthStr = null,
  }) {
    return _then(_$LengthChangedImpl(
      null == lengthStr
          ? _value.lengthStr
          : lengthStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LengthChangedImpl implements _LengthChanged {
  const _$LengthChangedImpl(this.lengthStr);

  @override
  final String lengthStr;

  @override
  String toString() {
    return 'ProductFormEvent.lengthChanged(lengthStr: $lengthStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LengthChangedImpl &&
            (identical(other.lengthStr, lengthStr) ||
                other.lengthStr == lengthStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lengthStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LengthChangedImplCopyWith<_$LengthChangedImpl> get copyWith =>
      __$$LengthChangedImplCopyWithImpl<_$LengthChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String priceStr) priceChanged,
    required TResult Function(String heightStr) heightChanged,
    required TResult Function(String widhtStr) widthChanged,
    required TResult Function(String lengthStr) lengthChanged,
    required TResult Function() saved,
  }) {
    return lengthChanged(lengthStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String priceStr)? priceChanged,
    TResult? Function(String heightStr)? heightChanged,
    TResult? Function(String widhtStr)? widthChanged,
    TResult? Function(String lengthStr)? lengthChanged,
    TResult? Function()? saved,
  }) {
    return lengthChanged?.call(lengthStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String priceStr)? priceChanged,
    TResult Function(String heightStr)? heightChanged,
    TResult Function(String widhtStr)? widthChanged,
    TResult Function(String lengthStr)? lengthChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (lengthChanged != null) {
      return lengthChanged(lengthStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_HeightChanged value) heightChanged,
    required TResult Function(_WidthChanged value) widthChanged,
    required TResult Function(_LengthChanged value) lengthChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return lengthChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PriceChanged value)? priceChanged,
    TResult? Function(_HeightChanged value)? heightChanged,
    TResult? Function(_WidthChanged value)? widthChanged,
    TResult? Function(_LengthChanged value)? lengthChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return lengthChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_HeightChanged value)? heightChanged,
    TResult Function(_WidthChanged value)? widthChanged,
    TResult Function(_LengthChanged value)? lengthChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (lengthChanged != null) {
      return lengthChanged(this);
    }
    return orElse();
  }
}

abstract class _LengthChanged implements ProductFormEvent {
  const factory _LengthChanged(final String lengthStr) = _$LengthChangedImpl;

  String get lengthStr;
  @JsonKey(ignore: true)
  _$$LengthChangedImplCopyWith<_$LengthChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res, _$SavedImpl>
    implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(
      _$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavedImpl implements _Saved {
  const _$SavedImpl();

  @override
  String toString() {
    return 'ProductFormEvent.saved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String priceStr) priceChanged,
    required TResult Function(String heightStr) heightChanged,
    required TResult Function(String widhtStr) widthChanged,
    required TResult Function(String lengthStr) lengthChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String priceStr)? priceChanged,
    TResult? Function(String heightStr)? heightChanged,
    TResult? Function(String widhtStr)? widthChanged,
    TResult? Function(String lengthStr)? lengthChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String priceStr)? priceChanged,
    TResult Function(String heightStr)? heightChanged,
    TResult Function(String widhtStr)? widthChanged,
    TResult Function(String lengthStr)? lengthChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_HeightChanged value) heightChanged,
    required TResult Function(_WidthChanged value) widthChanged,
    required TResult Function(_LengthChanged value) lengthChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PriceChanged value)? priceChanged,
    TResult? Function(_HeightChanged value)? heightChanged,
    TResult? Function(_WidthChanged value)? widthChanged,
    TResult? Function(_LengthChanged value)? lengthChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_HeightChanged value)? heightChanged,
    TResult Function(_WidthChanged value)? widthChanged,
    TResult Function(_LengthChanged value)? lengthChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ProductFormEvent {
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$ProductFormState {
  Product get product => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<ProductFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductFormStateCopyWith<ProductFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFormStateCopyWith<$Res> {
  factory $ProductFormStateCopyWith(
          ProductFormState value, $Res Function(ProductFormState) then) =
      _$ProductFormStateCopyWithImpl<$Res, ProductFormState>;
  @useResult
  $Res call(
      {Product product,
      bool showErrorMessage,
      bool isSaving,
      Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductFormStateCopyWithImpl<$Res, $Val extends ProductFormState>
    implements $ProductFormStateCopyWith<$Res> {
  _$ProductFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? showErrorMessage = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductFormStateImplCopyWith<$Res>
    implements $ProductFormStateCopyWith<$Res> {
  factory _$$ProductFormStateImplCopyWith(_$ProductFormStateImpl value,
          $Res Function(_$ProductFormStateImpl) then) =
      __$$ProductFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Product product,
      bool showErrorMessage,
      bool isSaving,
      Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductFormStateImplCopyWithImpl<$Res>
    extends _$ProductFormStateCopyWithImpl<$Res, _$ProductFormStateImpl>
    implements _$$ProductFormStateImplCopyWith<$Res> {
  __$$ProductFormStateImplCopyWithImpl(_$ProductFormStateImpl _value,
      $Res Function(_$ProductFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? showErrorMessage = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$ProductFormStateImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$ProductFormStateImpl implements _ProductFormState {
  const _$ProductFormStateImpl(
      {required this.product,
      required this.showErrorMessage,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Product product;
  @override
  final bool showErrorMessage;
  @override
  final bool isSaving;
  @override
  final Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProductFormState(product: $product, showErrorMessage: $showErrorMessage, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductFormStateImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, showErrorMessage,
      isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductFormStateImplCopyWith<_$ProductFormStateImpl> get copyWith =>
      __$$ProductFormStateImplCopyWithImpl<_$ProductFormStateImpl>(
          this, _$identity);
}

abstract class _ProductFormState implements ProductFormState {
  const factory _ProductFormState(
      {required final Product product,
      required final bool showErrorMessage,
      required final bool isSaving,
      required final Option<Either<ProductFailure, Unit>>
          saveFailureOrSuccessOption}) = _$ProductFormStateImpl;

  @override
  Product get product;
  @override
  bool get showErrorMessage;
  @override
  bool get isSaving;
  @override
  Option<Either<ProductFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$ProductFormStateImplCopyWith<_$ProductFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
