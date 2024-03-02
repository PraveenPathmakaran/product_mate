import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:productmate/application/product/product_form_bloc/product_form_bloc.dart';
import 'package:productmate/injection.dart';
import 'package:productmate/presentation/core/resource_manager/color_manager.dart';
import 'package:productmate/presentation/core/resource_manager/string_manager.dart';
import 'package:productmate/presentation/core/resource_manager/value_manger.dart';
import 'package:productmate/presentation/core/widget/utils.dart';

import '../core/widget/button_widget.dart';
import '../core/widget/loading_progrss_widget.dart';
import '../core/widget/text_formfield_widget.dart';

class ProductFormPage extends StatelessWidget {
  const ProductFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductFormBloc>(
      create: (context) => getIt<ProductFormBloc>(),
      child: Scaffold(
          body: BlocListener<ProductFormBloc, ProductFormState>(
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
              () => null,
              (a) => a.fold(
                  (f) => f.map(
                      unexpected: (_) => CustomSnackbar.show(
                          context,
                          StringManager.somethingWentWrong,
                          ColorManager.errorColor)),
                  (_) => context.pop()));
        },
        child: BlocBuilder<ProductFormBloc, ProductFormState>(
          builder: (context, state) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(AppPadding.p10),
                  child: Form(
                    autovalidateMode: state.showErrorMessage
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        //product name
                        TextFormFieldWidget(
                          hint: StringManager.productName,
                          onChanged: (value) => context
                              .read<ProductFormBloc>()
                              .add(ProductFormEvent.nameChanged(value)),
                          validator: (_) => context
                              .read<ProductFormBloc>()
                              .state
                              .product
                              .productName
                              .value
                              .fold(
                                  (failure) => failure.maybeMap(
                                      orElse: () => null,
                                      emptyString: (_) =>
                                          StringManager.invalidName),
                                  (r) => null),
                        ),
                        //price
                        TextFormFieldWidget(
                          hint: StringManager.price,
                          onChanged: (value) => context
                              .read<ProductFormBloc>()
                              .add(ProductFormEvent.priceChanged(value)),
                          validator: (_) => context
                              .read<ProductFormBloc>()
                              .state
                              .product
                              .productPrice
                              .value
                              .fold(
                                  (failure) => failure.maybeMap(
                                      orElse: () => null,
                                      invalidNumber: (_) =>
                                          StringManager.invalidName),
                                  (r) => null),
                        ),
                        //measurement
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: TextFormFieldWidget(
                              hint: StringManager.height,
                              onChanged: (value) =>
                                  context.read<ProductFormBloc>().add(
                                        ProductFormEvent.heightChanged(value),
                                      ),
                              validator: (_) => context
                                  .read<ProductFormBloc>()
                                  .state
                                  .product
                                  .productMeasureMent
                                  .height
                                  .value
                                  .fold(
                                      (failure) => failure.maybeMap(
                                          orElse: () => null,
                                          invalidNumber: (_) =>
                                              StringManager.invalidName),
                                      (r) => null),
                            )),
                            Expanded(
                                child: TextFormFieldWidget(
                              hint: StringManager.width,
                              onChanged: (value) => context
                                  .read<ProductFormBloc>()
                                  .add(ProductFormEvent.widthChanged(value)),
                              validator: (_) => context
                                  .read<ProductFormBloc>()
                                  .state
                                  .product
                                  .productMeasureMent
                                  .width
                                  .value
                                  .fold(
                                      (failure) => failure.maybeMap(
                                          orElse: () => null,
                                          invalidNumber: (_) =>
                                              StringManager.invalidName),
                                      (r) => null),
                            )),
                            Expanded(
                                child: TextFormFieldWidget(
                              hint: StringManager.length,
                              onChanged: (value) => context
                                  .read<ProductFormBloc>()
                                  .add(ProductFormEvent.lengthChanged(value)),
                              validator: (_) => context
                                  .read<ProductFormBloc>()
                                  .state
                                  .product
                                  .productMeasureMent
                                  .length
                                  .value
                                  .fold(
                                      (failure) => failure.maybeMap(
                                          orElse: () => null,
                                          invalidNumber: (_) =>
                                              StringManager.invalidName),
                                      (r) => null),
                            )),
                          ],
                        ),
                        //save button
                        ButtonWidget(
                          onPressed: () {
                            context
                                .read<ProductFormBloc>()
                                .add(const ProductFormEvent.saved());
                          },
                          text: StringManager.save,
                        ),
                      ],
                    ),
                  ),
                ),
                LoadingProgress(
                  isSaving: state.isSaving,
                )
              ],
            );
          },
        ),
      )),
    );
  }
}
