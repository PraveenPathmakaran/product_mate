part of 'product_search_bloc.dart';

@freezed
class ProductSearchState with _$ProductSearchState {
  const factory ProductSearchState({
    required ProductName query,
    required bool isLoading,
    required bool showErrorMessage,
    required List<Product> productList,
    required Option<Either<ProductFailure, List<Product>>>
        searchFailureOrSuccessOption,
  }) = _ProductSearchState;

  factory ProductSearchState.initial() => ProductSearchState(
        query: ProductName(""),
        isLoading: false,
        showErrorMessage: false,
        productList: [],
        searchFailureOrSuccessOption: none(),
      );
}
