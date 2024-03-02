// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return _ProductDto.fromJson(json);
}

/// @nodoc
mixin _$ProductDto {
  String get productId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  num get productPrice => throw _privateConstructorUsedError;
  ProductMeasureMentDto get productMeasureMent =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDtoCopyWith<ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDtoCopyWith<$Res> {
  factory $ProductDtoCopyWith(
          ProductDto value, $Res Function(ProductDto) then) =
      _$ProductDtoCopyWithImpl<$Res, ProductDto>;
  @useResult
  $Res call(
      {String productId,
      String productName,
      num productPrice,
      ProductMeasureMentDto productMeasureMent});

  $ProductMeasureMentDtoCopyWith<$Res> get productMeasureMent;
}

/// @nodoc
class _$ProductDtoCopyWithImpl<$Res, $Val extends ProductDto>
    implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? productPrice = null,
    Object? productMeasureMent = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as num,
      productMeasureMent: null == productMeasureMent
          ? _value.productMeasureMent
          : productMeasureMent // ignore: cast_nullable_to_non_nullable
              as ProductMeasureMentDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductMeasureMentDtoCopyWith<$Res> get productMeasureMent {
    return $ProductMeasureMentDtoCopyWith<$Res>(_value.productMeasureMent,
        (value) {
      return _then(_value.copyWith(productMeasureMent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDtoImplCopyWith<$Res>
    implements $ProductDtoCopyWith<$Res> {
  factory _$$ProductDtoImplCopyWith(
          _$ProductDtoImpl value, $Res Function(_$ProductDtoImpl) then) =
      __$$ProductDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productId,
      String productName,
      num productPrice,
      ProductMeasureMentDto productMeasureMent});

  @override
  $ProductMeasureMentDtoCopyWith<$Res> get productMeasureMent;
}

/// @nodoc
class __$$ProductDtoImplCopyWithImpl<$Res>
    extends _$ProductDtoCopyWithImpl<$Res, _$ProductDtoImpl>
    implements _$$ProductDtoImplCopyWith<$Res> {
  __$$ProductDtoImplCopyWithImpl(
      _$ProductDtoImpl _value, $Res Function(_$ProductDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? productPrice = null,
    Object? productMeasureMent = null,
  }) {
    return _then(_$ProductDtoImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as num,
      productMeasureMent: null == productMeasureMent
          ? _value.productMeasureMent
          : productMeasureMent // ignore: cast_nullable_to_non_nullable
              as ProductMeasureMentDto,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProductDtoImpl extends _ProductDto {
  _$ProductDtoImpl(
      {required this.productId,
      required this.productName,
      required this.productPrice,
      required this.productMeasureMent})
      : super._();

  factory _$ProductDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDtoImplFromJson(json);

  @override
  final String productId;
  @override
  final String productName;
  @override
  final num productPrice;
  @override
  final ProductMeasureMentDto productMeasureMent;

  @override
  String toString() {
    return 'ProductDto(productId: $productId, productName: $productName, productPrice: $productPrice, productMeasureMent: $productMeasureMent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDtoImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.productMeasureMent, productMeasureMent) ||
                other.productMeasureMent == productMeasureMent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, productId, productName, productPrice, productMeasureMent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDtoImplCopyWith<_$ProductDtoImpl> get copyWith =>
      __$$ProductDtoImplCopyWithImpl<_$ProductDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductDto extends ProductDto {
  factory _ProductDto(
          {required final String productId,
          required final String productName,
          required final num productPrice,
          required final ProductMeasureMentDto productMeasureMent}) =
      _$ProductDtoImpl;
  _ProductDto._() : super._();

  factory _ProductDto.fromJson(Map<String, dynamic> json) =
      _$ProductDtoImpl.fromJson;

  @override
  String get productId;
  @override
  String get productName;
  @override
  num get productPrice;
  @override
  ProductMeasureMentDto get productMeasureMent;
  @override
  @JsonKey(ignore: true)
  _$$ProductDtoImplCopyWith<_$ProductDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductMeasureMentDto _$ProductMeasureMentDtoFromJson(
    Map<String, dynamic> json) {
  return _ProductMeasureMentDto.fromJson(json);
}

/// @nodoc
mixin _$ProductMeasureMentDto {
  num get height => throw _privateConstructorUsedError;
  num get width => throw _privateConstructorUsedError;
  num get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductMeasureMentDtoCopyWith<ProductMeasureMentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductMeasureMentDtoCopyWith<$Res> {
  factory $ProductMeasureMentDtoCopyWith(ProductMeasureMentDto value,
          $Res Function(ProductMeasureMentDto) then) =
      _$ProductMeasureMentDtoCopyWithImpl<$Res, ProductMeasureMentDto>;
  @useResult
  $Res call({num height, num width, num length});
}

/// @nodoc
class _$ProductMeasureMentDtoCopyWithImpl<$Res,
        $Val extends ProductMeasureMentDto>
    implements $ProductMeasureMentDtoCopyWith<$Res> {
  _$ProductMeasureMentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
    Object? length = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as num,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductMeasureMentDtoImplCopyWith<$Res>
    implements $ProductMeasureMentDtoCopyWith<$Res> {
  factory _$$ProductMeasureMentDtoImplCopyWith(
          _$ProductMeasureMentDtoImpl value,
          $Res Function(_$ProductMeasureMentDtoImpl) then) =
      __$$ProductMeasureMentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num height, num width, num length});
}

/// @nodoc
class __$$ProductMeasureMentDtoImplCopyWithImpl<$Res>
    extends _$ProductMeasureMentDtoCopyWithImpl<$Res,
        _$ProductMeasureMentDtoImpl>
    implements _$$ProductMeasureMentDtoImplCopyWith<$Res> {
  __$$ProductMeasureMentDtoImplCopyWithImpl(_$ProductMeasureMentDtoImpl _value,
      $Res Function(_$ProductMeasureMentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
    Object? length = null,
  }) {
    return _then(_$ProductMeasureMentDtoImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as num,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProductMeasureMentDtoImpl extends _ProductMeasureMentDto {
  _$ProductMeasureMentDtoImpl(
      {required this.height, required this.width, required this.length})
      : super._();

  factory _$ProductMeasureMentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductMeasureMentDtoImplFromJson(json);

  @override
  final num height;
  @override
  final num width;
  @override
  final num length;

  @override
  String toString() {
    return 'ProductMeasureMentDto(height: $height, width: $width, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductMeasureMentDtoImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, width, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductMeasureMentDtoImplCopyWith<_$ProductMeasureMentDtoImpl>
      get copyWith => __$$ProductMeasureMentDtoImplCopyWithImpl<
          _$ProductMeasureMentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductMeasureMentDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductMeasureMentDto extends ProductMeasureMentDto {
  factory _ProductMeasureMentDto(
      {required final num height,
      required final num width,
      required final num length}) = _$ProductMeasureMentDtoImpl;
  _ProductMeasureMentDto._() : super._();

  factory _ProductMeasureMentDto.fromJson(Map<String, dynamic> json) =
      _$ProductMeasureMentDtoImpl.fromJson;

  @override
  num get height;
  @override
  num get width;
  @override
  num get length;
  @override
  @JsonKey(ignore: true)
  _$$ProductMeasureMentDtoImplCopyWith<_$ProductMeasureMentDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
