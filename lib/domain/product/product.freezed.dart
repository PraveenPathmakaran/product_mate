// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Product {
  UniqueId get productId => throw _privateConstructorUsedError;
  ProductName get productName => throw _privateConstructorUsedError;
  ProductPrice get productPrice => throw _privateConstructorUsedError;
  ProductMeasureMent get productMeasureMent =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {UniqueId productId,
      ProductName productName,
      ProductPrice productPrice,
      ProductMeasureMent productMeasureMent});

  $ProductMeasureMentCopyWith<$Res> get productMeasureMent;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

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
              as UniqueId,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as ProductName,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as ProductPrice,
      productMeasureMent: null == productMeasureMent
          ? _value.productMeasureMent
          : productMeasureMent // ignore: cast_nullable_to_non_nullable
              as ProductMeasureMent,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductMeasureMentCopyWith<$Res> get productMeasureMent {
    return $ProductMeasureMentCopyWith<$Res>(_value.productMeasureMent,
        (value) {
      return _then(_value.copyWith(productMeasureMent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId productId,
      ProductName productName,
      ProductPrice productPrice,
      ProductMeasureMent productMeasureMent});

  @override
  $ProductMeasureMentCopyWith<$Res> get productMeasureMent;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? productPrice = null,
    Object? productMeasureMent = null,
  }) {
    return _then(_$ProductImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as ProductName,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as ProductPrice,
      productMeasureMent: null == productMeasureMent
          ? _value.productMeasureMent
          : productMeasureMent // ignore: cast_nullable_to_non_nullable
              as ProductMeasureMent,
    ));
  }
}

/// @nodoc

class _$ProductImpl extends _Product {
  _$ProductImpl(
      {required this.productId,
      required this.productName,
      required this.productPrice,
      required this.productMeasureMent})
      : super._();

  @override
  final UniqueId productId;
  @override
  final ProductName productName;
  @override
  final ProductPrice productPrice;
  @override
  final ProductMeasureMent productMeasureMent;

  @override
  String toString() {
    return 'Product(productId: $productId, productName: $productName, productPrice: $productPrice, productMeasureMent: $productMeasureMent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.productMeasureMent, productMeasureMent) ||
                other.productMeasureMent == productMeasureMent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, productId, productName, productPrice, productMeasureMent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);
}

abstract class _Product extends Product {
  factory _Product(
      {required final UniqueId productId,
      required final ProductName productName,
      required final ProductPrice productPrice,
      required final ProductMeasureMent productMeasureMent}) = _$ProductImpl;
  _Product._() : super._();

  @override
  UniqueId get productId;
  @override
  ProductName get productName;
  @override
  ProductPrice get productPrice;
  @override
  ProductMeasureMent get productMeasureMent;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductMeasureMent {
  MeasureMent get height => throw _privateConstructorUsedError;
  MeasureMent get width => throw _privateConstructorUsedError;
  MeasureMent get length => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductMeasureMentCopyWith<ProductMeasureMent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductMeasureMentCopyWith<$Res> {
  factory $ProductMeasureMentCopyWith(
          ProductMeasureMent value, $Res Function(ProductMeasureMent) then) =
      _$ProductMeasureMentCopyWithImpl<$Res, ProductMeasureMent>;
  @useResult
  $Res call({MeasureMent height, MeasureMent width, MeasureMent length});
}

/// @nodoc
class _$ProductMeasureMentCopyWithImpl<$Res, $Val extends ProductMeasureMent>
    implements $ProductMeasureMentCopyWith<$Res> {
  _$ProductMeasureMentCopyWithImpl(this._value, this._then);

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
              as MeasureMent,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as MeasureMent,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as MeasureMent,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductMeasureMentImplCopyWith<$Res>
    implements $ProductMeasureMentCopyWith<$Res> {
  factory _$$ProductMeasureMentImplCopyWith(_$ProductMeasureMentImpl value,
          $Res Function(_$ProductMeasureMentImpl) then) =
      __$$ProductMeasureMentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MeasureMent height, MeasureMent width, MeasureMent length});
}

/// @nodoc
class __$$ProductMeasureMentImplCopyWithImpl<$Res>
    extends _$ProductMeasureMentCopyWithImpl<$Res, _$ProductMeasureMentImpl>
    implements _$$ProductMeasureMentImplCopyWith<$Res> {
  __$$ProductMeasureMentImplCopyWithImpl(_$ProductMeasureMentImpl _value,
      $Res Function(_$ProductMeasureMentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
    Object? length = null,
  }) {
    return _then(_$ProductMeasureMentImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as MeasureMent,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as MeasureMent,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as MeasureMent,
    ));
  }
}

/// @nodoc

class _$ProductMeasureMentImpl extends _ProductMeasureMent {
  _$ProductMeasureMentImpl(
      {required this.height, required this.width, required this.length})
      : super._();

  @override
  final MeasureMent height;
  @override
  final MeasureMent width;
  @override
  final MeasureMent length;

  @override
  String toString() {
    return 'ProductMeasureMent(height: $height, width: $width, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductMeasureMentImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode => Object.hash(runtimeType, height, width, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductMeasureMentImplCopyWith<_$ProductMeasureMentImpl> get copyWith =>
      __$$ProductMeasureMentImplCopyWithImpl<_$ProductMeasureMentImpl>(
          this, _$identity);
}

abstract class _ProductMeasureMent extends ProductMeasureMent {
  factory _ProductMeasureMent(
      {required final MeasureMent height,
      required final MeasureMent width,
      required final MeasureMent length}) = _$ProductMeasureMentImpl;
  _ProductMeasureMent._() : super._();

  @override
  MeasureMent get height;
  @override
  MeasureMent get width;
  @override
  MeasureMent get length;
  @override
  @JsonKey(ignore: true)
  _$$ProductMeasureMentImplCopyWith<_$ProductMeasureMentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
