import 'package:flutter/material.dart';
import 'package:productmate/presentation/core/resource_manager/color_manager.dart';
import 'package:productmate/presentation/core/resource_manager/string_manager.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../domain/product/product.dart';

class ProductPageDetail extends StatelessWidget {
  final Product product;

  const ProductPageDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringManager.productsDetails),
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _buildTableRow(
                  'Product Name :', '${product.productName.getOrCrash()}'),
              _buildTableRow(
                  'Price :', '₹ ${product.productPrice.getOrCrash()}'),
              _buildTableRow('Height :',
                  '${product.productMeasureMent.height.getOrCrash()} m'),
              _buildTableRow('Width :',
                  '${product.productMeasureMent.width.getOrCrash()} m'),
              _buildTableRow('Length :',
                  '${product.productMeasureMent.length.getOrCrash()} m'),
              const SizedBox(height: 20.0),
              const Text(
                'Name QR:',
                style: TextStyle(fontSize: 20.0),
              ),
              QrImageView(
                data: product.productName.getOrCrash(),
                backgroundColor: ColorManager.whiteColor,
                version: QrVersions.auto,
                size: 200.0,
              ),
              const SizedBox(height: 20.0),
              const Text(
                'ID QR:',
                style: TextStyle(fontSize: 20.0),
              ),
              QrImageView(
                data: product.productId.getOrCrash(),
                backgroundColor: ColorManager.whiteColor,
                version: QrVersions.auto,
                size: 200.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTableRow(String label, String value) {
    return Table(
      children: [
        TableRow(
          decoration: BoxDecoration(
              border: Border.all(
            color: ColorManager.darkColor,
          )),
          children: [
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  label,
                  style: const TextStyle(fontSize: 18.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  value,
                  style: const TextStyle(fontSize: 18.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
