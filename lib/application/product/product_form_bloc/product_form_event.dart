part of 'product_form_bloc.dart';

@freezed
class ProductFormEvent with _$ProductFormEvent {
  const factory ProductFormEvent.initialize() = _Initialize;
  const factory ProductFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory ProductFormEvent.priceChanged(String priceStr) = _PriceChanged;
  const factory ProductFormEvent.heightChanged(String heightStr) =
      _HeightChanged;
  const factory ProductFormEvent.widthChanged(String widhtStr) = _WidthChanged;
  const factory ProductFormEvent.lengthChanged(String lengthStr) =
      _LengthChanged;

  const factory ProductFormEvent.saved() = _Saved;
}
