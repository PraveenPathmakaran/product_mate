// search_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:productmate/application/product/product_search/product_search_bloc.dart';
import 'package:productmate/presentation/app_router.dart';
import 'package:productmate/presentation/core/resource_manager/color_manager.dart';
import 'package:productmate/presentation/core/resource_manager/string_manager.dart';
import 'package:productmate/presentation/core/widget/text_formfield_widget.dart';

import '../../domain/core/debounce/debounce.dart';
import '../core/resource_manager/style_manager.dart';
import '../core/resource_manager/value_manger.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final _debouncer = Debouncer(milliseconds: 10);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context
          .read<ProductSearchBloc>()
          .add(const ProductSearchEvent.initialize());
    });
    return Scaffold(
      appBar: AppBar(
        title: TextFormFieldWidget(
          hint: StringManager.search,
          onChanged: (query) {
            if (query.isNotEmpty) {
              context
                  .read<ProductSearchBloc>()
                  .add(ProductSearchEvent.queryChanged(query));
              _debouncer.run(() {
                context
                    .read<ProductSearchBloc>()
                    .add(const ProductSearchEvent.searchButtonPressed());
              });
            } else {
              context
                  .read<ProductSearchBloc>()
                  .add(const ProductSearchEvent.initialize());
            }
          },
        ),
        actions: [
          IconButton(
              onPressed: () async {
                context
                    .read<ProductSearchBloc>()
                    .add(const ProductSearchEvent.qrButtonPressed());
              },
              icon: const Icon(
                Icons.qr_code,
                size: AppSize.s35,
              ))
        ],
        elevation: 0,
      ),
      body: BlocBuilder<ProductSearchBloc, ProductSearchState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(
                child: CircularProgressIndicator(
              color: ColorManager.whiteColor,
            ));
          }
          if (state.productList.isEmpty) {
            return Center(
              child: Text(
                StringManager.productNotFound,
                style: getRegularStyle(color: ColorManager.whiteColor),
              ),
            );
          }
          return ListView.builder(
            itemCount: state.productList.length,
            itemBuilder: (context, index) {
              if (state.productList[index].failureOption.isNone()) {
                return Card(
                  color: ColorManager.semiDarkColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.s10)),
                  child: ListTile(
                    tileColor: Colors.transparent,
                    onTap: () => context.push(RouteNames.productDetail,
                        extra: state.productList[index]),
                    title: Text(
                      state.productList[index].productName.getOrCrash(),
                      style: getRegularStyle(color: ColorManager.whiteColor),
                    ),
                    subtitle: Text(
                      "₹ ${state.productList[index].productPrice.getOrCrash().toString()}",
                      style: getRegularStyle(color: ColorManager.whiteColor),
                    ),
                  ),
                );
              } else {
                return Card(
                  color: ColorManager.semiDarkColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.s10)),
                  child: ListTile(
                    tileColor: Colors.transparent,
                    title: Text(
                      StringManager.invalid,
                      style: getRegularStyle(
                        color: ColorManager.errorColor,
                      ),
                    ),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
