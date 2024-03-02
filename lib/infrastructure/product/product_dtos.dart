// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:productmate/domain/core/value_objects.dart';
import 'package:productmate/domain/product/product_value_object.dart';

import '../../domain/product/product.dart';

part 'product_dtos.freezed.dart';
part 'product_dtos.g.dart';

@freezed
abstract class ProductDto implements _$ProductDto {
  ProductDto._();
  @JsonSerializable(explicitToJson: true)
  factory ProductDto({
    required String productId,
    required String productName,
    required num productPrice,
    required ProductMeasureMentDto productMeasureMent,
  }) = _ProductDto;

  factory ProductDto.fromDomain(Product product) {
    return ProductDto(
      productId: product.productId.getOrCrash(),
      productName: product.productName.getOrCrash(),
      productPrice: product.productPrice.getOrCrash(),
      productMeasureMent:
          ProductMeasureMentDto.fromDomain(product.productMeasureMent),
    );
  }

  Product toDomain() {
    return Product(
      productId: UniqueId.fromUniqueString(productId),
      productName: ProductName(productName),
      productPrice: ProductPrice(productPrice.toString()),
      productMeasureMent: productMeasureMent.toDomain(),
    );
  }

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}

@freezed
abstract class ProductMeasureMentDto implements _$ProductMeasureMentDto {
  ProductMeasureMentDto._();
  @JsonSerializable(explicitToJson: true)
  factory ProductMeasureMentDto({
    required num height,
    required num width,
    required num length,
  }) = _ProductMeasureMentDto;

  factory ProductMeasureMentDto.fromDomain(
      ProductMeasureMent productMeasureMent) {
    return ProductMeasureMentDto(
      height: productMeasureMent.height.getOrCrash(),
      length: productMeasureMent.length.getOrCrash(),
      width: productMeasureMent.width.getOrCrash(),
    );
  }
  ProductMeasureMent toDomain() {
    return ProductMeasureMent(
      height: MeasureMent(height.toString()),
      width: MeasureMent(height.toString()),
      length: MeasureMent(height.toString()),
    );
  }

  factory ProductMeasureMentDto.fromJson(Map<String, dynamic> json) =>
      _$ProductMeasureMentDtoFromJson(json);
}
