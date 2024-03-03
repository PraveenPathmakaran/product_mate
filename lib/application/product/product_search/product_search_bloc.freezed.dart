// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchButtonPressed,
    required TResult Function(String query) queryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchButtonPressed,
    TResult? Function(String query)? queryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchButtonPressed,
    TResult Function(String query)? queryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchButtonPressed value) searchButtonPressed,
    required TResult Function(_QueryChanged value) queryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchButtonPressed value)? searchButtonPressed,
    TResult? Function(_QueryChanged value)? queryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchButtonPressed value)? searchButtonPressed,
    TResult Function(_QueryChanged value)? queryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSearchEventCopyWith<$Res> {
  factory $ProductSearchEventCopyWith(
          ProductSearchEvent value, $Res Function(ProductSearchEvent) then) =
      _$ProductSearchEventCopyWithImpl<$Res, ProductSearchEvent>;
}

/// @nodoc
class _$ProductSearchEventCopyWithImpl<$Res, $Val extends ProductSearchEvent>
    implements $ProductSearchEventCopyWith<$Res> {
  _$ProductSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchButtonPressedImplCopyWith<$Res> {
  factory _$$SearchButtonPressedImplCopyWith(_$SearchButtonPressedImpl value,
          $Res Function(_$SearchButtonPressedImpl) then) =
      __$$SearchButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchButtonPressedImplCopyWithImpl<$Res>
    extends _$ProductSearchEventCopyWithImpl<$Res, _$SearchButtonPressedImpl>
    implements _$$SearchButtonPressedImplCopyWith<$Res> {
  __$$SearchButtonPressedImplCopyWithImpl(_$SearchButtonPressedImpl _value,
      $Res Function(_$SearchButtonPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchButtonPressedImpl implements _SearchButtonPressed {
  const _$SearchButtonPressedImpl();

  @override
  String toString() {
    return 'ProductSearchEvent.searchButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchButtonPressed,
    required TResult Function(String query) queryChanged,
  }) {
    return searchButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchButtonPressed,
    TResult? Function(String query)? queryChanged,
  }) {
    return searchButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchButtonPressed,
    TResult Function(String query)? queryChanged,
    required TResult orElse(),
  }) {
    if (searchButtonPressed != null) {
      return searchButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchButtonPressed value) searchButtonPressed,
    required TResult Function(_QueryChanged value) queryChanged,
  }) {
    return searchButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchButtonPressed value)? searchButtonPressed,
    TResult? Function(_QueryChanged value)? queryChanged,
  }) {
    return searchButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchButtonPressed value)? searchButtonPressed,
    TResult Function(_QueryChanged value)? queryChanged,
    required TResult orElse(),
  }) {
    if (searchButtonPressed != null) {
      return searchButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _SearchButtonPressed implements ProductSearchEvent {
  const factory _SearchButtonPressed() = _$SearchButtonPressedImpl;
}

/// @nodoc
abstract class _$$QueryChangedImplCopyWith<$Res> {
  factory _$$QueryChangedImplCopyWith(
          _$QueryChangedImpl value, $Res Function(_$QueryChangedImpl) then) =
      __$$QueryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$QueryChangedImplCopyWithImpl<$Res>
    extends _$ProductSearchEventCopyWithImpl<$Res, _$QueryChangedImpl>
    implements _$$QueryChangedImplCopyWith<$Res> {
  __$$QueryChangedImplCopyWithImpl(
      _$QueryChangedImpl _value, $Res Function(_$QueryChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$QueryChangedImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QueryChangedImpl implements _QueryChanged {
  const _$QueryChangedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ProductSearchEvent.queryChanged(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryChangedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryChangedImplCopyWith<_$QueryChangedImpl> get copyWith =>
      __$$QueryChangedImplCopyWithImpl<_$QueryChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchButtonPressed,
    required TResult Function(String query) queryChanged,
  }) {
    return queryChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchButtonPressed,
    TResult? Function(String query)? queryChanged,
  }) {
    return queryChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchButtonPressed,
    TResult Function(String query)? queryChanged,
    required TResult orElse(),
  }) {
    if (queryChanged != null) {
      return queryChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchButtonPressed value) searchButtonPressed,
    required TResult Function(_QueryChanged value) queryChanged,
  }) {
    return queryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchButtonPressed value)? searchButtonPressed,
    TResult? Function(_QueryChanged value)? queryChanged,
  }) {
    return queryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchButtonPressed value)? searchButtonPressed,
    TResult Function(_QueryChanged value)? queryChanged,
    required TResult orElse(),
  }) {
    if (queryChanged != null) {
      return queryChanged(this);
    }
    return orElse();
  }
}

abstract class _QueryChanged implements ProductSearchEvent {
  const factory _QueryChanged(final String query) = _$QueryChangedImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$QueryChangedImplCopyWith<_$QueryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductSearchState {
  ProductName get query => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  List<Product> get productList => throw _privateConstructorUsedError;
  Option<Either<ProductFailure, List<Product>>>
      get searchFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductSearchStateCopyWith<ProductSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSearchStateCopyWith<$Res> {
  factory $ProductSearchStateCopyWith(
          ProductSearchState value, $Res Function(ProductSearchState) then) =
      _$ProductSearchStateCopyWithImpl<$Res, ProductSearchState>;
  @useResult
  $Res call(
      {ProductName query,
      bool isLoading,
      bool showErrorMessage,
      List<Product> productList,
      Option<Either<ProductFailure, List<Product>>>
          searchFailureOrSuccessOption});
}

/// @nodoc
class _$ProductSearchStateCopyWithImpl<$Res, $Val extends ProductSearchState>
    implements $ProductSearchStateCopyWith<$Res> {
  _$ProductSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? isLoading = null,
    Object? showErrorMessage = null,
    Object? productList = null,
    Object? searchFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as ProductName,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      searchFailureOrSuccessOption: null == searchFailureOrSuccessOption
          ? _value.searchFailureOrSuccessOption
          : searchFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, List<Product>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductSearchStateImplCopyWith<$Res>
    implements $ProductSearchStateCopyWith<$Res> {
  factory _$$ProductSearchStateImplCopyWith(_$ProductSearchStateImpl value,
          $Res Function(_$ProductSearchStateImpl) then) =
      __$$ProductSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductName query,
      bool isLoading,
      bool showErrorMessage,
      List<Product> productList,
      Option<Either<ProductFailure, List<Product>>>
          searchFailureOrSuccessOption});
}

/// @nodoc
class __$$ProductSearchStateImplCopyWithImpl<$Res>
    extends _$ProductSearchStateCopyWithImpl<$Res, _$ProductSearchStateImpl>
    implements _$$ProductSearchStateImplCopyWith<$Res> {
  __$$ProductSearchStateImplCopyWithImpl(_$ProductSearchStateImpl _value,
      $Res Function(_$ProductSearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? isLoading = null,
    Object? showErrorMessage = null,
    Object? productList = null,
    Object? searchFailureOrSuccessOption = null,
  }) {
    return _then(_$ProductSearchStateImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as ProductName,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      productList: null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      searchFailureOrSuccessOption: null == searchFailureOrSuccessOption
          ? _value.searchFailureOrSuccessOption
          : searchFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, List<Product>>>,
    ));
  }
}

/// @nodoc

class _$ProductSearchStateImpl implements _ProductSearchState {
  const _$ProductSearchStateImpl(
      {required this.query,
      required this.isLoading,
      required this.showErrorMessage,
      required final List<Product> productList,
      required this.searchFailureOrSuccessOption})
      : _productList = productList;

  @override
  final ProductName query;
  @override
  final bool isLoading;
  @override
  final bool showErrorMessage;
  final List<Product> _productList;
  @override
  List<Product> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  final Option<Either<ProductFailure, List<Product>>>
      searchFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProductSearchState(query: $query, isLoading: $isLoading, showErrorMessage: $showErrorMessage, productList: $productList, searchFailureOrSuccessOption: $searchFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSearchStateImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            (identical(other.searchFailureOrSuccessOption,
                    searchFailureOrSuccessOption) ||
                other.searchFailureOrSuccessOption ==
                    searchFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      isLoading,
      showErrorMessage,
      const DeepCollectionEquality().hash(_productList),
      searchFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSearchStateImplCopyWith<_$ProductSearchStateImpl> get copyWith =>
      __$$ProductSearchStateImplCopyWithImpl<_$ProductSearchStateImpl>(
          this, _$identity);
}

abstract class _ProductSearchState implements ProductSearchState {
  const factory _ProductSearchState(
      {required final ProductName query,
      required final bool isLoading,
      required final bool showErrorMessage,
      required final List<Product> productList,
      required final Option<Either<ProductFailure, List<Product>>>
          searchFailureOrSuccessOption}) = _$ProductSearchStateImpl;

  @override
  ProductName get query;
  @override
  bool get isLoading;
  @override
  bool get showErrorMessage;
  @override
  List<Product> get productList;
  @override
  Option<Either<ProductFailure, List<Product>>>
      get searchFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$ProductSearchStateImplCopyWith<_$ProductSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
