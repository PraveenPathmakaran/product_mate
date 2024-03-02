import 'package:dartz/dartz.dart';
import 'package:productmate/domain/product/product.dart';

import 'product_failure.dart';

abstract interface class ProudctRepo {
  Stream<Either<ProductFailure, List<Product>>> watchAllProduct();
  Future<Either<ProductFailure, Unit>> createProduct({
    required Product product,
  });
}
