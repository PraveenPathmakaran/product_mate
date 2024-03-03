import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:productmate/application/product/product_search/product_search_bloc.dart';
import 'package:productmate/presentation/app_router.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrViewPage extends StatefulWidget {
  const QrViewPage({super.key});

  @override
  State<QrViewPage> createState() => _QrViewPageState();
}

class _QrViewPageState extends State<QrViewPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductSearchBloc, ProductSearchState>(
      listener: (context, state) {
        state.searchFailureOrSuccessOption.fold(
            () => null,
            (a) => a.fold((l) => null,
                (r) => context.pushReplacement(RouteNames.search)));
      },
      child: Scaffold(
        body: Expanded(
          child: QRView(
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
          ),
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;

    controller.scannedDataStream.listen((scanData) {
      if (scanData.code != null && scanData.code!.isNotEmpty) {
        context.read<ProductSearchBloc>().add(
              ProductSearchEvent.queryChanged(scanData.code!),
            );

        context.read<ProductSearchBloc>().add(
              const ProductSearchEvent.searchButtonPressed(),
            );
      }
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
