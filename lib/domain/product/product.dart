import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:productmate/domain/core/value_objects.dart';
import 'package:productmate/domain/product/product_value_object.dart';

import '../core/value_failures.dart';

part 'product.freezed.dart';

@freezed
abstract class Product implements _$Product {
  Product._();
  factory Product({
    required UniqueId productId,
    required ProductName productName,
    required ProductPrice productPrice,
    required ProductMeasureMent productMeasureMent,
  }) = _Product;
  factory Product.empty() => Product(
        productId: UniqueId(),
        productName: ProductName(''),
        productPrice: ProductPrice(''),
        productMeasureMent: ProductMeasureMent.empty(),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return productId
        .failureOrUnit()
        .andThen(productName.failureOrUnit())
        .andThen(productPrice.failureOrUnit())
        .andThen(productMeasureMent.failureOption
            .fold(() => right(unit), (a) => left(a)))
        .fold((l) => some(l), (r) => none());
  }
}

@freezed
abstract class ProductMeasureMent implements _$ProductMeasureMent {
  ProductMeasureMent._();
   factory ProductMeasureMent({
    required MeasureMent height,
    required MeasureMent width,
    required MeasureMent length,
  }) = _ProductMeasureMent;

  factory ProductMeasureMent.empty() => ProductMeasureMent(
        height: MeasureMent(''),
        width: MeasureMent(''),
        length: MeasureMent(''),
      );
  Option<ValueFailure<dynamic>> get failureOption {
    return height
        .failureOrUnit()
        .andThen(width.failureOrUnit())
        .andThen(length.failureOrUnit())
        .fold((l) => some(l), (_) => none());
  }
}
