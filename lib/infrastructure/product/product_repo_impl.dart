import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:injectable/injectable.dart';
import 'package:productmate/domain/product/product.dart';
import 'package:productmate/domain/product/product_failure.dart';
import 'package:productmate/domain/product/product_repo.dart';
import 'package:productmate/domain/product/product_value_object.dart';
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

  @override
  Future<Either<ProductFailure, List<Product>>> searchProduct({
    required ProductName query,
  }) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final String productNameDto = query.getOrCrash();

      final searchResult = await userDoc.productCollection.get();
      final searchProduct = searchResult.docs
          .map((e) =>
              ProductDto.fromJson(e.data() as Map<String, dynamic>).toDomain())
          .toList()
          .where((element) => element.productName
              .getOrCrash()
              .toString()
              .toLowerCase()
              .contains(productNameDto.toLowerCase()))
          .toList();
      return right(searchProduct);
    } catch (e) {
      log(e.toString(), name: "ProductRepoImpl-createProduct");
      return left(const ProductFailure.unexpected());
    }
  }

  @override
  Future<Either<ProductFailure, List<Product>>> fetchAllProducts() async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final searchResult = await userDoc.productCollection.get();
      final searchProduct = searchResult.docs
          .map((e) =>
              ProductDto.fromJson(e.data() as Map<String, dynamic>).toDomain())
          .toList();

      return right(searchProduct);
    } catch (e) {
      log(e.toString(), name: "ProductRepoImpl-fetchAllProducts");
      return left(const ProductFailure.unexpected());
    }
  }

  @override
  Future<Either<ProductFailure, ProductName>> qrCodeReader() async {
    try {
      String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cancel", true, ScanMode.QR);
      if (barcodeScanRes == "-1") {
        return left(const ProductFailure.userQrCodeCancelled());
      }
      return right(ProductName(barcodeScanRes));
    } catch (e) {
      log(e.toString(), name: "ProductRepoImpl-qrCodeReader");
      return left(const ProductFailure.qrCodeFailure());
    }
  }
}
