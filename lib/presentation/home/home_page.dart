import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:productmate/application/product/product_bloc.dart';
import 'package:productmate/presentation/app_router.dart';
import 'package:productmate/presentation/core/resource_manager/string_manager.dart';
import 'package:productmate/presentation/core/widget/widgets.dart';

import '../core/widget/error_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  context.push(RouteNames.qrPage);
                },
                icon: const Icon(Icons.search))
          ],
        ),
        body: SafeArea(child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            log(state.toString());
            return state.map(
                initial: (value) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                loadInProgress: (value) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                loadSuccess: (value) {
                  return ListView.separated(
                      itemBuilder: (context, index) => ListTile(
                            onTap: () => context.push(RouteNames.productDetail,
                                extra: value.product[index]),
                            title: Text(
                              value.product[index].productName.getOrCrash(),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                      separatorBuilder: (context, index) =>
                          AppSizedBox.kHeight10,
                      itemCount: value.product.length);
                },
                loadFailure: (value) => const AppErrorWidget(
                      errorMessage: StringManager.somethingWentWrong,
                    ));
          },
        )));
  }
}
