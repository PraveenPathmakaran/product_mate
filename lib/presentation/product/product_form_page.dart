import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:productmate/application/product/product_form_bloc/product_form_bloc.dart';
import 'package:productmate/injection.dart';
import 'package:productmate/presentation/core/resource_manager/color_manager.dart';
import 'package:productmate/presentation/core/resource_manager/string_manager.dart';
import 'package:productmate/presentation/core/resource_manager/value_manger.dart';
import 'package:productmate/presentation/core/widget/utils.dart';
import 'package:productmate/presentation/core/widget/widgets.dart';

import '../core/widget/button_widget.dart';
import '../core/widget/loading_progrss_widget.dart';
import '../core/widget/text_formfield_widget.dart';
import 'widgets/measurement_widget.dart';

class ProductFormPage extends StatelessWidget {
  const ProductFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode()..requestFocus();
    return BlocProvider(
      create: (context) =>
          getIt<ProductFormBloc>()..add(const ProductFormEvent.initialize()),
      child: Scaffold(
          appBar: AppBar(
            title: const Text(StringManager.createNewProduct),
          ),
          resizeToAvoidBottomInset: false,
          body: BlocListener<ProductFormBloc, ProductFormState>(
            listener: (context, state) {
              state.saveFailureOrSuccessOption.fold(
                  () => null,
                  (a) => a.fold(
                          (f) => f.maybeMap(
                              orElse: () => null,
                              unexpected: (_) => CustomSnackbar.show(
                                  context,
                                  StringManager.somethingWentWrong,
                                  ColorManager.errorColor)), (_) {
                        context.pop();
                      }));
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
                        child: Align(
                          alignment: Alignment.center,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                AppSizedBox.kHeight50,
                                //product name
                                TextFormFieldWidget(
                                  focusNode: focusNode,
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
                                  prefixIcon:
                                      const Icon(Icons.local_grocery_store),
                                ),
                                AppSizedBox.kHeight15,
                                //price
                                TextFormFieldWidget(
                                  hint: StringManager.price,
                                  onChanged: (value) => context
                                      .read<ProductFormBloc>()
                                      .add(
                                          ProductFormEvent.priceChanged(value)),
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
                                                  StringManager.invalidPrice),
                                          (r) => null),
                                  prefixIcon: const Icon(Icons.currency_rupee),
                                  keyboardType: TextInputType.number,
                                  inputFormatter: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                ),
                                AppSizedBox.kHeight15,
                                //measurement
                                const MeasureMentWidget(),
                                AppSizedBox.kHeight35,
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
