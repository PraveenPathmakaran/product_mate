import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_failure.freezed.dart';

@freezed
class ProductFailure with _$ProductFailure {
  const factory ProductFailure.unexpected() = _Unexpected;
  const factory ProductFailure.userQrCodeCancelled() = _UserQrCodeCancelled;
  const factory ProductFailure.qrCodeFailure() = _QrCodeFailure;
}
