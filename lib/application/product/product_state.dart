part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loadInProgress() = _LoadInProgress;
  const factory ProductState.loadSuccess(List<Product> product) = _LoadSuccess;
  const factory ProductState.loadFailure(ProductFailure noteFailure) =
      _LoadFailure;
}
