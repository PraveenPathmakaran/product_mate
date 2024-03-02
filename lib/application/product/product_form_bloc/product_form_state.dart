part of 'product_form_bloc.dart';

@freezed
class ProductFormState with _$ProductFormState {
  const factory ProductFormState({
    required Product product,
    required bool showErrorMessage,
    required bool isSaving,
    required Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ProductFormState;

  factory ProductFormState.initial() => ProductFormState(
        product: Product.empty(),
        showErrorMessage: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
