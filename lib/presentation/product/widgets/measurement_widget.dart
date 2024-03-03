import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/product/product_form_bloc/product_form_bloc.dart';
import '../../core/resource_manager/string_manager.dart';
import '../../core/widget/text_formfield_widget.dart';

class MeasureMentWidget extends StatelessWidget {
  const MeasureMentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            child: TextFormFieldWidget(
          hint: StringManager.height,
          onChanged: (value) => context.read<ProductFormBloc>().add(
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
                      invalidNumber: (_) => StringManager.invalidMeasureMent),
                  (r) => null),
          prefixIcon: const Icon(Icons.numbers),
          keyboardType: TextInputType.number,
          inputFormatter: [FilteringTextInputFormatter.digitsOnly],
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
                      invalidNumber: (_) => StringManager.invalidMeasureMent),
                  (r) => null),
          prefixIcon: const Icon(Icons.numbers),
          keyboardType: TextInputType.number,
          inputFormatter: [FilteringTextInputFormatter.digitsOnly],
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
                      invalidNumber: (_) => StringManager.invalidMeasureMent),
                  (r) => null),
          prefixIcon: const Icon(Icons.numbers),
          keyboardType: TextInputType.number,
          inputFormatter: [FilteringTextInputFormatter.digitsOnly],
        )),
      ],
    );
  }
}
