import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:productmate/application/product/product_bloc.dart';
import 'package:productmate/presentation/app_router.dart';
import 'package:productmate/presentation/core/resource_manager/color_manager.dart';
import 'package:productmate/presentation/core/resource_manager/string_manager.dart';
import 'package:productmate/presentation/core/resource_manager/style_manager.dart';
import 'package:productmate/presentation/core/resource_manager/value_manger.dart';
import 'package:productmate/presentation/core/widget/widgets.dart';

import '../core/widget/error_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringManager.products,
          style: getRegularStyle(
              color: ColorManager.whiteColor, fontSize: AppFont.f25),
        ),
        actions: [
          IconButton(
              onPressed: () {
                context.push(RouteNames.search);
              },
              icon: const Icon(
                Icons.search,
                size: AppSize.s35,
              ))
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return state.map(
                initial: (value) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                loadInProgress: (value) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                loadSuccess: (value) {
                  if (value.product.isEmpty) {
                    return Center(
                      child: Text(
                        StringManager.createNewProduct,
                        style: getRegularStyle(color: ColorManager.whiteColor),
                      ),
                    );
                  }
                  return ListView.separated(
                      padding: const EdgeInsets.all(AppPadding.p8),
                      itemBuilder: (context, index) {
                        if (value.product[index].failureOption.isNone()) {
                          return Card(
                            color: ColorManager.semiDarkColor,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(AppSize.s10)),
                            child: ListTile(
                              tileColor: Colors.transparent,
                              onTap: () => context.push(
                                  RouteNames.productDetail,
                                  extra: value.product[index]),
                              title: Text(
                                value.product[index].productName.getOrCrash(),
                                style: getRegularStyle(
                                    color: ColorManager.whiteColor),
                              ),
                              subtitle: Text(
                                "₹ ${value.product[index].productPrice.getOrCrash().toString()}",
                                style: getRegularStyle(
                                    color: ColorManager.whiteColor),
                              ),
                            ),
                          );
                        } else {
                          return Card(
                            color: ColorManager.semiDarkColor,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(AppSize.s10)),
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
                      separatorBuilder: (context, index) =>
                          AppSizedBox.kHeight10,
                      itemCount: value.product.length);
                },
                loadFailure: (value) => const AppErrorWidget(
                      errorMessage: StringManager.somethingWentWrong,
                    ));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorManager.primaryColor,
        onPressed: () {
          context.push(RouteNames.productForm);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
