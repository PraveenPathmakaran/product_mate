part of 'product_search_bloc.dart';

@freezed
class ProductSearchEvent with _$ProductSearchEvent {
  const factory ProductSearchEvent.searchButtonPressed() = _SearchButtonPressed;
  const factory ProductSearchEvent.queryChanged(String query) = _QueryChanged;
}