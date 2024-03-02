import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:productmate/domain/product/product.dart';
import 'package:productmate/domain/product/product_failure.dart';
import 'package:productmate/domain/product/product_repo.dart';
import 'package:productmate/infrastructure/core/firestore_helper.dart';
import 'package:productmate/infrastructure/product/product_dtos.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: ProudctRepo)
class ProductRepoImpl implements ProudctRepo {
  final FirebaseFirestore _firebaseFirestore;

  ProductRepoImpl(this._firebaseFirestore);
  @override
  Future<Either<ProductFailure, Unit>> createProduct({
    required Product product,
  }) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final productDto = ProductDto.fromDomain(product);
      final productJson = productDto.toJson();

      await userDoc.productCollection
          .doc(productDto.productId)
          .set(productJson);
      return right(unit);
    } catch (e) {
      log(e.toString(), name: "ProductRepoImpl-createProduct");
      return left(const ProductFailure.unexpected());
    }
  }

  @override
  Stream<Either<ProductFailure, List<Product>>> watchAllProduct() async* {
    final userDoc = await _firebaseFirestore.userDocument();
    yield* userDoc.productCollection
        .snapshots()
        .map((snapshot) => right<ProductFailure, List<Product>>(snapshot.docs
            .map((doc) =>
                ProductDto.fromJson(doc.data() as Map<String, dynamic>)
                    .toDomain())
            .toList()))
        .onErrorReturnWith((error, stackTrace) => left(
              const ProductFailure.unexpected(),
            ));
  }
}
