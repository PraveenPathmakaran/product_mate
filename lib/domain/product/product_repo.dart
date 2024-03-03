import 'package:dartz/dartz.dart';
import 'package:productmate/domain/product/product.dart';
import 'package:productmate/domain/product/product_value_object.dart';

import 'product_failure.dart';

abstract interface class ProudctRepo {
  Stream<Either<ProductFailure, List<Product>>> watchAllProduct();
  Future<Either<ProductFailure, Unit>> createProduct({
    required Product product,
  });
  Future<Either<ProductFailure, List<Product>>> searchProduct({
    required ProductName query,
  });
}
